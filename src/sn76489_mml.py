# Please write a class library in micropython which plays a MML-file on a SN76489 via I2C. 
# https://chat.openai.com/chat/ede913fa-4fcb-44ae-81d8-b8f546e91327

import machine
import time

class SN76489:
    def __init__(self, i2c, addr=0x20, freq=4000000):
        self.i2c = i2c
        self.addr = addr
        self.freq = freq
        self.i2c.writeto(self.addr, bytes([0x9F, 0x00])) # Reset SN76489
        self.i2c.writeto(self.addr, bytes([0x9F, 0x80])) # Enable SN76489
        self.write(0x80) # Set Channel 0
        self.write(0x80) # Set Tone 0
        self.write(0x80) # Set Volume 0
        self.write(0x90) # Set Noise
        self.write(0x80) # Set Tone 0
        self.write(0x80) # Set Volume 0
    
    def write(self, data):
        self.i2c.writeto(self.addr, bytes([data]))
    
    def play(self, mml_file):
        with open(mml_file, "r") as f:
            for line in f:
                if line.startswith("#"):
                    continue
                line = line.strip()
                if line:
                    self.process_line(line)
    
    def process_line(self, line):
        for command in line.split():
            if command.startswith("o"):
                octave = int(command[1:])
                self.write(0x80 | octave)
            elif command.startswith("t"):
                tempo = int(command[1:])
                self.delay(60 / (tempo * 4))
            elif command.startswith("v"):
                volume = int(command[1:])
                self.write(0x90 | volume)
            elif command.startswith("n"):
                note = self.get_note_freq(command[1:])
                self.write(0x80 | (note & 0x0F))
                self.write((note >> 4) & 0xFF)
            elif command.startswith("l"):
                length = int(command[1:])
                self.delay(length * 0.25)
    
    def get_note_freq(self, note):
        freq_table = {
            "c": 0x1C0,
            "c#": 0x1D8,
            "d": 0x200,
            "d#": 0x220,
            "e": 0x240,
            "f": 0x270,
            "f#": 0x2A0,
            "g": 0x2E0,
            "g#": 0x320,
            "a": 0x380,
            "a#": 0x400,
            "b": 0x480
        }
        note_freq = freq_table.get(note[0].lower(), 0x1C0)
        if len(note) > 1:
            if note[1] == "#":
                note_freq += (note_freq >> 4)
            elif note[1] == "-":
                note_freq -= (note_freq >> 4)
        return note_freq
    
    def delay(self, seconds):
        time.sleep(seconds)
