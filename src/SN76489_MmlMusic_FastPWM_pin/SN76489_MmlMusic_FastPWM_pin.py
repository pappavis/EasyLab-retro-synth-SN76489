# 20250122 Circuitpython-version, untested!!
import board
import busio
import digitalio
import time
from adafruit_pcf8575 import PCF8575
from adafruit_mml import MmlMusic

class SN76489RetroSynth:
    def __init__(self, i2c, not_we_pin):
        self.i2c = i2c
        self.unio = PCF8575(i2c, address=0x38)
        self.not_we_pin = digitalio.DigitalInOut(not_we_pin)
        self.not_we_pin.direction = digitalio.Direction.OUTPUT
        self.music = MmlMusic()
        self.setup()

    def setup(self):
        print("mxUnifiedSN76489 MML Music")
        self.unio.begin()
        self.sound = mxUnifiedSN76489(self.unio, self.not_we_pin)
        self.sound.begin()
        self.music.set_play_callback(self.my_play_callback)
        self.music.set_tone_callback(self.my_tone_callback)
        self.music.set_completion_callback(self.my_completion_callback)
        self.music.play("v127t100l4o4 r g>c2d.d16+f16d+2<g.l8g>c4.dd+<d+>l12d+cgf2.<g4>c4.l8dd+.<g16>g.d+16>c2<c4l12d+dcg4&gd+c<g4g8.g16>c2,v127t100l8o3 r4cg>cd+fdc<gcg>cd+dc<bgcg>cd+ggc<gf>cfa>c4<d<gcg>cd+gd+<a+4g+>cd+g+4.<g+4g>cd+gc4<b4c2 r")

    def my_tone_callback(self, frequency, length, nTrack, nVolume):
        if frequency == 0 and length == 0:
            self.sound.noTone(nTrack)
        elif frequency > 0:
            nVol = 15 - (nVolume >> 3)
            self.sound.tone(frequency, nVol, nTrack)
        return True

    def my_play_callback(self, mml, fUseFlash):
        print("Play ", end="")
        print(mml)

    def my_completion_callback(self):
        print(" Done!")

    def delay_r(self, ms):
        end_time = time.monotonic() + (ms / 1000)
        while time.monotonic() < end_time:
            if self.music.is_playing():
                self.music.continue_playing()
            time.sleep(0.001)

    def loop(self):
        while True:
            if self.music.is_playing():
                self.music.continue_playing()
            else:
                self.music.play("T240 O4 L64 AB>C, T240 O4 L32 CBA V0 A \0\0")
                self.delay_r(1000)

# Initialize I2C bus
i2c = busio.I2C(board.SCL, board.SDA)
# Create instance of the SN76489RetroSynth class
synth = SN76489RetroSynth(i2c, board.IO4)
# Run the loop method
synth.loop()
