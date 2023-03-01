# micropython class library for ESP32 which plays a MIDI file via I2C on a Sn76489
from machine import Pin, I2C
import time
import tinymidi
import struct

class SN76489MIDIPlayer:
    def __init__(self, i2c, addr):
        self.i2c = i2c
        self.addr = addr
        self.write_command(0x9f) # reset the PSG
        time.sleep_ms(1)
        self.write_command(0x06) # set the PSG to 4-bit mode
        time.sleep_ms(1)
    
    def write_command(self, command):
        self.i2c.writeto(self.addr, bytearray([command]))
    
    def write_data(self, data):
        self.i2c.writeto(self.addr, bytearray([data]))
    
    def play_midi(self, midi_file):
        # initialize the MIDI player
        midi = tinymidi.MIDI(midi_file)
        
        # iterate over the MIDI tracks
        for track in midi.tracks:
            # iterate over the MIDI events in the track
            for event in track:
                # if the event is a note-on or note-off event
                if event.type == 'note_on' or event.type == 'note_off':
                    # calculate the PSG frequency based on the MIDI note number
                    note_num = event.note
                    freq = int(round(3579545 / (16 * pow(2, (note_num - 69) / 12))))
                    
                    # calculate the PSG volume based on the MIDI velocity
                    velocity = event.velocity
                    volume = int(round(15 * velocity / 127))
                    
                    # calculate the PSG channel based on the MIDI channel
                    channel = event.channel
                    
                    # send the PSG command and data bytes to the Sn76489
                    command_byte = 0x80 | ((channel & 0x03) << 5) | (volume & 0x0f)
                    data_byte = (freq >> 8) & 0x3f
                    self.write_command(command_byte)
                    self.write_data(data_byte)
                    data_byte = freq & 0xff
                    self.write_data(data_byte)
                    
                    # if this is a note-off event, send a PSG command to turn off the channel
                    if event.type == 'note_off':
                        command_byte = 0x90 | ((channel & 0x03) << 5) | 0x0f
                        self.write_command(command_byte)
                        self.write_data(0)
                        self.write_data(0)
                        
                    # sleep for the duration of the MIDI event
                    time.sleep(event.time / 1000)

print(" run the code")
i2c = I2C(scl=Pin(22), sda=Pin(21))
player = SN76489M(i2c, 0x50)
midiFile = open('musicfile.mid', 'r')
player.play_midi(midiFile)
print("EINDE")
