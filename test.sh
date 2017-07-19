#!/bin/bash
printf "> Making files..\n"
make mcBits &> /dev/null
cd src/ || exit
printf "> Loading McBits to board..\n"
st-flash write mcBits.bin 0x8000000 &> /dev/null
printf "> Loading done! Get ready to press reset!\n"
sleep 5
cd ../hostside/ || exit
./hostside.py > output.txt 
./compare.py
cd ../ || exit
printf "> Cleaning up..\n"
make clean > /dev/null
printf "> Test script done!\n\n"
