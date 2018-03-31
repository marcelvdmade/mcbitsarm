#!/usr/bin/env python3
import serial
import sys
import os
import time
import signal

dev = serial.Serial("/dev/ttyUSB0", 115200)

#wait for first contact from the device
print("> Press reset-button to continue..", file=sys.stderr)
dev.read(1)

while True:	
	x = dev.read()
	sys.stdout.buffer.write(x)
	sys.stdout.flush()