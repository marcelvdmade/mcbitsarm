#!/bin/bash
reset
make original.bin
st-flash write original.bin 0x8000000
