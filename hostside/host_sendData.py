#!/usr/bin/env python3
import serial
import sys
import os

#get path to key files
script_dir = os.path.dirname(__file__) #<-- absolute dir the script is in
rel_s_path = "../keygen/output/key_s.txt"
rel_c_path = "../keygen/output/cipher.txt"
rel_o_path = "message.txt"
sKey_file_path = os.path.join(script_dir, rel_s_path)
c_file_path = os.path.join(script_dir, rel_c_path)
o_file_path = os.path.join(script_dir, rel_o_path)

dev = serial.Serial("/dev/ttyUSB0", 115200)

#wait for first contact from the device
print("> Waiting for signal", file=sys.stderr)
dev.read()

#read secret key and send it
print("> Writing secret key..", file=sys.stderr)
s_file = open(sKey_file_path, "r")
for line in s_file: 
    dev.write(line.encode('utf-8'))
    
#read cipher and send it
print("> Writing cipher..", file=sys.stderr)
s_file = open(c_file_path, "r")
for line in s_file: 
    dev.write(line.encode('utf-8'))
    
#receive cycle count
print("> Cycle count:", file=sys.stderr)

#try to write output to a file as well
o_file = open(o_file_path,"w") 
while True:
    x = dev.read()
    sys.stdout.buffer.write(x)
    o_file.write(x) #gotta test this
    sys.stdout.flush()

