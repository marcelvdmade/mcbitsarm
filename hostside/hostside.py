#!/usr/bin/env python3
import serial
import sys
import os

#lengths
m_length = 1939
cyclecount_length = 139
buffer_length = 11

dev = serial.Serial("/dev/ttyUSB0", 115200)

#wait for first contact from the device
print("> Press reset-button to continue..", file=sys.stderr)
dev.read(1)

for x in range(0, cyclecount_length + m_length + buffer_length):
    x = dev.read()
    sys.stdout.buffer.write(x)
    sys.stdout.flush()
