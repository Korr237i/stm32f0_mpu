from PyQt5.QtCore import QThread, pyqtSignal
import serial
import struct


##############################################
port = '/dev/ttyUSB0'   # порт для подключения
baudrate = 115200       # частота передачи
##############################################

class Packet:
    def __init__(self):
        self.descr_val1 = 0
        self.descr_val2 = 0
        self.descr_val_size = 1

        self.number = 0
        self.time = 0.0

        self.accelData = []
        self.gyroData = []
        self.magnData = []
        self.quaternion = []
        self.data_size = 8

        self.crc = 0
        self.special_fields_size = 4     # size of number, time and crc

    def count_crc(self):
        # TODO: написать
        return self.crc




class Connector:
    def __init__(self, con_port, con_baudrate):
        self.connection = self.uart_connection(_port=con_port, _baudrate=con_baudrate)

    def uart_connection(self, _port, _baudrate):
        while True:
            try:
                connection = serial.Serial(
                    port=_port,
                    baudrate=_baudrate,
                    parity=serial.PARITY_NONE,
                    stopbits=serial.STOPBITS_ONE,
                    bytesize=serial.EIGHTBITS,
                    xonxoff=False,
                    rtscts=False,
                    dsrdtr=False
                )
                if not connection.is_open:
                    connection.open()

                print("port_opened")
                return connection
            except IOError as e:
                print("error", e)
                pass

    def bytes_to_int(self, bytes):
        result = 0
        for b in bytes:
            result = result * 256 + int(b)
        return result

    def bytes_to_float(self, bytes):
        x = 0
        [x] = struct.unpack('f', bytes)
        return x

    def bytes_to_double(self, bytes):
        x = 0
        [x] = struct.unpack('d', bytes)
        return x


    def read(self, count):
        return self.connection.read(count)

    def parse_packet(self):
        packet = Packet()

        while True:
            packet.descr_val1 = self.bytes_to_int(self.read(packet.descr_val_size))
            packet.descr_val2 = self.bytes_to_int(self.read(packet.descr_val_size))

            if (packet.descr_val1 != 255) and (packet.descr_val2 != 254):
                if (packet.descr_val2 == 255):
                    packet.descr_val1 = 255
                    packet.descr_val2 = self.bytes_to_int(self.read(packet.descr_val_size))

                    if (packet.descr_val2 == 254):
                        break

                print("Bad index", packet.descr_val1, packet.descr_val2)
            else: break

        packet.number = self.bytes_to_int(self.read(packet.special_fields_size))
        packet.time = self.bytes_to_float(self.read(packet.special_fields_size))

        for i in range(3):
            packet.accelData.append(self.bytes_to_double(self.read(packet.data_size)))

        for i in range(3):
            packet.gyroData.append(self.bytes_to_double(self.read(packet.data_size)))

        for i in range(3):
            packet.magnData.append(self.bytes_to_double(self.read(packet.data_size)))

        for i in range(4):
            packet.quaternion.append(self.bytes_to_double(self.read(packet.data_size)))

        packet.crc = self.bytes_to_int(self.read(packet.special_fields_size))

        # crc = packet.count_crc()

        # if crc == packet.crc:
        return packet
        # else:
        #     print("Invalid CRC. Expected", crc, "found:", packet.crc)

    def close(self):
        self.connection.close()




class MsgAccumulator:
    def __init__(self, batch_size, signal):
        self.batch_size = batch_size
        self.signal = signal
        self.accumulator = []

    def push_message(self, msg):
        self.accumulator.append(msg)
        if len(self.accumulator) >= self.batch_size:
            self.signal.emit(self.accumulator)          # send all accumulator to slot @QtCore.pyqtSlot(list)
            self.accumulator = []
            # print('PUSH COMPLETED')




class Thread(QThread):
    new_record = pyqtSignal(list)

    def __init__(self):
        QThread.__init__(self)
        self.record_accum = MsgAccumulator(5, self.new_record)

    def run(self):
        print("Запускаюсь. Использую serial port")
        conn = Connector(con_port=port, con_baudrate=baudrate)

        while True:
            # pack = Packet()
            pack = conn.parse_packet()
            self.record_accum.push_message(pack)