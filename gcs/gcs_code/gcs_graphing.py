import os
from math import *
import numpy as np
import pyqtgraph as pg
from .gcs_ui import *

from PyQt5 import QtCore, QtWidgets
import pyqtgraph.opengl as gl
from stl import mesh
from itertools import chain
import pyquaternion


MESH_PATH = os.path.abspath('theplane.stl')



class PlaneWidget(gl.GLViewWidget):
    def __init__(self, mesh_path, *args, **kwargs):
        super(PlaneWidget, self).__init__(*args, **kwargs)
        self.setCameraPosition(distance=15)
        self.setBackgroundColor([120, 120, 120, 0])
        g = gl.GLGridItem()
        g.scale(2, 2, 1)
        g.setSize(350, 350, 350)
        self.addItem(g)

        isc_coord = gl.GLAxisItem()
        isc_coord.setSize(350, 350, 350)
        isc_coord.translate(0, 0, 0.5)
        self.addItem(isc_coord)

        self.plane_axis = gl.GLAxisItem()
        self.plane_axis.setSize(x=300, y=300, z=300)
        self.addItem(self.plane_axis)

        verts = self._get_mesh_points(mesh_path)
        faces = np.array([(i, i+1, i+2,) for i in range(0, len(verts), 3)])
        colors = np.array([(0.0, 1.0, 0.0, 1.0,) for i in range(0, len(verts), 3)])
        self.mesh = gl.GLMeshItem(vertexes=verts, faces=faces, faceColors=colors, smooth=False, shader='shaded')
        self.addItem(self.mesh)


    def _get_mesh_points(self, mesh_path):
        your_mesh = mesh.Mesh.from_file(mesh_path)
        points = your_mesh.points

        points = np.array(list(chain(*points)))
        i = 0
        nd_points = np.ndarray(shape=(len(points)//3, 3,))
        for i in range(0, len(points)//3):
            nd_points[i] = points[i*3: (i+1)*3]

        return nd_points

    def _transform_object(self, target, move=True, rotate=True, scale=1 / 50):
        target.resetTransform()
        target.scale(scale, scale, scale)
        if move: target.translate(0, 0, -3)
        if rotate:
            target.rotate(degrees(self.rotation.angle), self.rotation.axis[0], self.rotation.axis[1],
                          self.rotation.axis[2])

    def _update_rotation(self, record):
        quat = pyquaternion.Quaternion(record)
        self.rotation = quat
        self._transform_object(self.mesh)
        self._transform_object(self.plane_axis, move=False)


class MyWin(QtWidgets.QMainWindow):

    def __init__(self, parent=None):
        QtWidgets.QWidget.__init__(self, parent)
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        # self
        self.setWindowTitle('gcs')
        self.plane_widget = PlaneWidget(mesh_path=MESH_PATH, parent=self)

        pg.setConfigOption('background', 'w')
        pg.setConfigOption('foreground', 'k')

        # Variables
        self.accel_x = []
        self.accel_y = []
        self.accel_z = []

        self.gyro_x = []
        self.gyro_y = []
        self.gyro_z = []

        self.magn_x = []
        self.magn_y = []
        self.magn_z = []

        self.time = []

        self.length = 150
        self.cut = 11


        # Accel graph
        self.ui.graph_w_top = pg.GraphicsLayoutWidget(self.ui.centralwidget)
        self.ui.verticalLayout_5.addWidget(self.ui.graph_w_top)
        self.ui.plot_layout_top = pg.GraphicsLayout()
        self.ui.graph_w_top.addItem(self.ui.plot_layout_top)

        self.graph_accel = pg.PlotItem(title='Accel', labels={'left': 'accel', 'bottom': 'time'})
        self.ui.plot_layout_top.addItem(self.graph_accel)

        self.accel_x_plot = self.graph_accel.plot()
        self.accel_y_plot = self.graph_accel.plot()
        self.accel_z_plot = self.graph_accel.plot()


        # Gyro graph
        self.ui.graph_w_middle = pg.GraphicsLayoutWidget(self.ui.centralwidget)
        self.ui.verticalLayout_5.addWidget(self.ui.graph_w_middle)
        self.ui.plot_layout_middle = pg.GraphicsLayout()
        self.ui.graph_w_middle.addItem(self.ui.plot_layout_middle)

        self.graph_gyro = pg.PlotItem(title="Gyro", labels={'left': 'gyro', 'bottom': 'time'})
        self.ui.plot_layout_middle.addItem(self.graph_gyro)

        self.gyro_x_plot = self.graph_gyro.plot()
        self.gyro_y_plot = self.graph_gyro.plot()
        self.gyro_z_plot = self.graph_gyro.plot()


        # Magneto graph
        self.ui.graph_w_bottom = pg.GraphicsLayoutWidget(self.ui.centralwidget)
        self.ui.verticalLayout_5.addWidget(self.ui.graph_w_bottom)
        self.ui.plot_layout_bottom = pg.GraphicsLayout()
        self.ui.graph_w_bottom.addItem(self.ui.plot_layout_bottom)

        self.graph_magn = pg.PlotItem(title="Magnetometer", labels={'left': 'magnetometer', 'bottom': 'time'})
        self.ui.plot_layout_bottom.addItem(self.graph_magn)

        self.magn_x_plot = self.graph_magn.plot()
        self.magn_y_plot = self.graph_magn.plot()
        self.magn_z_plot = self.graph_magn.plot()


        # 3D graph
        self.ui.dockwid = QtWidgets.QDockWidget()
        self.ui.grid3DGrafLayout.addWidget(self.ui.dockwid)
        self.ui.glwid = self.plane_widget
        self.ui.dockwid.setWidget(self.ui.glwid)

        self.ui.glwid.show()


    def clear_log(self):
        self.ui.textBrowser.setText('')


    def log_add(self, log_msg):
        self.ui.textBrowser.setText(str(log_msg) + '\n')


    @QtCore.pyqtSlot(list)
    def msg(self, msgs):
        for i in range(len(msgs)):
            self.accel_x.append(msgs[i].accelData[0])
            self.accel_y.append(msgs[i].accelData[1])
            self.accel_z.append(msgs[i].accelData[2])

            self.gyro_x.append(msgs[i].gyroData[0])
            self.gyro_y.append(msgs[i].gyroData[1])
            self.gyro_z.append(msgs[i].gyroData[2])

            self.magn_x.append(msgs[i].magnData[0])
            self.magn_y.append(msgs[i].magnData[1])
            self.magn_z.append(msgs[i].magnData[2])

            self.time.append(msgs[i].time)

            quat = pyquaternion.Quaternion(msgs[i].quaternion)
            self.plane_widget._update_rotation(quat)


        if len(self.time) > self.length:
            self.accel_x = self.accel_x[self.cut:(self.length - 1)]
            self.accel_y = self.accel_y[self.cut:(self.length - 1)]
            self.accel_z = self.accel_z[self.cut:(self.length - 1)]

            self.gyro_x = self.gyro_x[self.cut:(self.length - 1)]
            self.gyro_y = self.gyro_y[self.cut:(self.length - 1)]
            self.gyro_z = self.gyro_z[self.cut:(self.length - 1)]

            self.magn_x = self.magn_x[self.cut:(self.length - 1)]
            self.magn_y = self.magn_y[self.cut:(self.length - 1)]
            self.magn_z = self.magn_z[self.cut:(self.length - 1)]

            self.time = self.time[self.cut:(self.length - 1)]


        self.accel_x_plot.setData(x=self.time, y=self.accel_x, pen=('r'), width=0.5)
        self.accel_y_plot.setData(x=self.time, y=self.accel_y, pen=('g'), width=0.5)
        self.accel_z_plot.setData(x=self.time, y=self.accel_z, pen=('b'), width=0.5)

        self.gyro_x_plot.setData(x=self.time, y=self.gyro_x, pen=('r'), width=0.5)
        self.gyro_y_plot.setData(x=self.time, y=self.gyro_y, pen=('g'), width=0.5)
        self.gyro_z_plot.setData(x=self.time, y=self.gyro_z, pen=('b'), width=0.5)

        self.magn_x_plot.setData(x=self.time, y=self.magn_x, pen=('r'), width=0.5)
        self.magn_y_plot.setData(x=self.time, y=self.magn_y, pen=('g'), width=0.5)
        self.magn_z_plot.setData(x=self.time, y=self.magn_z, pen=('b'), width=0.5)
