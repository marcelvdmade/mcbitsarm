#!/usr/bin/env python3
import filecmp
import os
import time
print('> Start comparing output..')

#set path to files
original_message_path = "../output/message.txt"
mcBits_extracted_output_path = "../output/output.txt"
mcBits_output_path = "output.txt"
speed_path = "../output/speed"+time.strftime("%Y%m%d")+".txt"
message_line = 6

#extract the message
f=open(mcBits_output_path,"r")
g=open(mcBits_extracted_output_path,"w")
lines = f.readlines()
g.write(lines[message_line-1])
f.close()
g.close()

#write speeds
h=open(speed_path,"w")
for x in range(0, 5):
	h.write(lines[x])
h.close

if filecmp.cmp(original_message_path,mcBits_extracted_output_path):
	print('\n >>> test passed! <<<\n')
else:
	print('\n >>> Test failed! <<<\n')
	if len(lines) > message_line:
		print('>>> Decryption step failed! <<<\n')
	else:
		print('>>> Output is not the same as the original message! <<<\n')