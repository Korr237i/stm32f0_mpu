import sys
import logging
from PyQt5 import QtWidgets
from gcs_code.gcs_serial import Thread
from gcs_code.gcs_graphing import MyWin

if __name__ == "__main__":
    # logging.basicConfig(
    #     stream=sys.stdout, level=logging.INFO,
    #     format="%(asctime)-15s %(message)s"
    # )

    ######################################
    app = QtWidgets.QApplication(sys.argv)
    myapp = MyWin()

    myapp.show()
    ######################################

    thread = Thread()
    thread.new_record.connect(myapp.msg)

    sys.exit(app.exec_())
