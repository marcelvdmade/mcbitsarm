#!/usr/bin/env python3
import serial
import sys
import os

#get path to key files
script_dir = os.path.dirname(__file__) #<-- absolute dir the script is in
rel_s_path = "../keygen/key_s.txt"
rel_p_path = "../keygen/key_p.txt"
sKey_file_path = os.path.join(script_dir, rel_s_path)
pKey_file_path = os.path.join(script_dir, rel_s_path)

dev = serial.Serial("/dev/ttyUSB0", 115200)

#wait for first contact from the device
print("> Waiting for signal", file=sys.stderr)
dev.read()

#read secret key and send it
print("> Writing secret key..", file=sys.stderr)
s_file = open(sKey_file_path, "r")
for line in s_file: 
    dev.write(line.encode('utf-8'))

#read public key and send it
print("> Writing public key..", file=sys.stderr)
p_file = open(pKey_file_path, "r")
for line in p_file: 
    dev.write(line.encode('utf-8'))

while True:
    x = dev.read()
    sys.stdout.buffer.write(x)
    sys.stdout.flush()
