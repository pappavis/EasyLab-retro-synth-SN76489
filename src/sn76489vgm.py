# Please write a class library in micropython for the ESP32 which plays a VGM-file on a SN76489 via I2C
# To use this class library, simply create an instance of VGMPlayer and call its `play

import ustruct
from machine import I2C, Pin, Timer

class SN76489:
    def __init__(self, i2c, address=0x40):
        self.i2c = i2c
        self.address = address
        self.write_register(0x9f) # reset
        self.write_register(0x07, 0x38) # volume control
        self.write_register(0x06, 0x00) # noise generator
        self.write_register(0x00, 0x00) # tone 0 frequency
        self.write_register(0x01, 0x00) # tone 1 frequency
        self.write_register(0x02, 0x00) # tone 2 frequency
        self.write_register(0x03, 0x00) # noise period and mode

    def write_register(self, register, value=0x00):
        self.i2c.writeto(self.address, ustruct.pack('BB', register, value))

class VGMPlayer:
    def __init__(self, i2c, clock_pin, data_pin, vgm_file):
        self.i2c = i2c
        self.sn76489 = SN76489(self.i2c)
        self.clock_pin = Pin(clock_pin, Pin.OUT)
        self.data_pin = Pin(data_pin, Pin.IN)
        self.timer = Timer(1)
        self.timer.init(period=1, mode=Timer.PERIODIC, callback=self.timer_callback)
        self.vgm_data = bytearray(open(vgm_file, "rb").read())
        self.vgm_offset = 0
        self.clock_period = 250000 # default clock period of 4MHz

    def set_clock_period(self, period):
        self.clock_period = period

    def timer_callback(self, timer):
        while True:
            command = self.vgm_data[self.vgm_offset]
            self.vgm_offset += 1
            if command == 0x50:
                # PSG (SN76489) write
                data = self.vgm_data[self.vgm_offset:self.vgm_offset+2]
                self.vgm_offset += 2
                self.sn76489.write_register(data[0], data[1])
            elif command == 0x61:
                # Wait n samples
                data = self.vgm_data[self.vgm_offset:self.vgm_offset+4]
                self.vgm_offset += 4
                wait_samples = (data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3]
                wait_time = int(wait_samples * self.clock_period)
                pyb.delay(wait_time)
            elif command == 0x62:
                # Wait n/44100 seconds
                data = self.vgm_data[self.vgm_offset:self.vgm_offset+4]
                self.vgm_offset += 4
                wait_samples = (data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3]
                wait_time = int(wait_samples * 1000000 / 44100)
                pyb.delay(wait_time)
            elif command == 0x66:
                # End of sound data
                break

    def play(self):
        self.vgm_offset = 0
