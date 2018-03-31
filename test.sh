#!/bin/bash
reset

#Build
printf "> Making files..\n"
make mcBits &> /dev/null

#Flash
cd src || exit
printf "> Loading McBits to board..\n"
st-flash write mcBits.bin 0x8000000 &> /dev/null

#Wait for flashing to complete, to prevent the board from already sending blobs
sleep 5

#Get the receiving side ready
cd ../hostside/ || exit
./hostside.py > output.txt &

#Silently kill the receiving side, since it uses a while loop
PID=$! 
sleep 5
disown $PID
kill -9 $PID

#Compare the output and store the speeds
./compare.py
cd ../ || exit

#Clean up
printf "> Cleaning up..\n"
#make clean > /dev/null
printf "> Test script done!\n\n"
