# Please write a program in Python for the Raspberry Pi  which plays mary Had a Little Lamb using a SN76489 via I2C. Also, generate a 4Mhz clock signal for the SN76489's pin 14.
# https://chat.openai.com/chat/ede913fa-4fcb-44ae-81d8-b8f546e91327

import smbus
import time
import RPi.GPIO as GPIO

# Define clock frequency
clock_freq = 4000000

# Set up I2C interface
i2c = smbus.SMBus(1)

# Set up clock signal
GPIO.setmode(GPIO.BCM)
GPIO.setup(14, GPIO.OUT)

# Configure SN76489 for 4-bit volume, 8-bit tone registers
i2c.write_byte(0x40, 0x9F)

# Define note frequencies
C = 0x60
D = 0x68
E = 0x70
F = 0x78
G = 0x80
A = 0x88
B = 0x90

# Play "Mary Had a Little Lamb"
notes = [E, D, C, D, E, E, E, D, D, D, E, G, G, E, D, C, D, E, E, E, E, D, D, E, D, C]
durations = [4, 4, 4, 4, 4, 4, 2, 4, 4, 2, 4, 4, 2, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4]

# Define function to generate clock signal
def generate_clock(freq):
    while True:
        GPIO.output(14, GPIO.LOW)
        time.sleep(1/freq/2)
        GPIO.output(14, GPIO.HIGH)
        time.sleep(1/freq/2)

# Start clock signal generator
clock_thread = threading.Thread(target=generate_clock, args=(clock_freq,))
clock_thread.start()

# Play notes
for i in range(len(notes)):
    tone = notes[i]
    duration = durations[i]
    i2c.write_byte(0x40, 0x80 | tone)
    i2c.write_byte(0x40

print("Program end")
                   
