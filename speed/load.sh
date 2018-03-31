#!/bin/bash
reset
make speed.bin
st-flash write speed.bin 0x8000000
