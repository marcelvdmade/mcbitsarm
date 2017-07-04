## MCBits on STM32f407

A master thesis project from Marcel

### File structure

*hostside/ contains Python scripts to communicate with the board.

*inc/ contains the header and data files of MCBits

*lib/ contains the Cortex M4 libraries

*libopencm3/ contains firmware libraries

*src/ contains the source files of MCBits and the makefile

*keygen/ contains a project and its own Makefile, to generate and write a keypair to a file

### Installation

This code assumes you have the [arm-none-eabi toolchain](https://launchpad.net/gcc-arm-embedded) installed and accessible. Confusingly, the tools available in the (discontinued) embedian project have identical names - be careful to select the correct toolchain (or consider re-installing if you experience unexpected behaviour). On most Linux systems, the correct toolchain gets installed when you install the `arm-none-eabi-gcc` package.

This project relies on the [libopencm3](https://github.com/libopencm3/libopencm3/) firmware. This is included as a submodule. Compile it by calling make libcm3 in the src folder, before attempting to compile any of the other targets.

Binaries can be compiled by calling e.g. `make mcBits.bin`. Binaries can then be flashed onto the boards using [stlink](https://github.com/texane/stlink), as follows: `st-flash write mcBits.bin 0x8000000`.

The host-side Python code requires the [pyserial](https://github.com/pyserial/pyserial) module. Your package repository might offer `python-serial` or `python-pyserial` directly (as of writing, this is the case for Ubuntu, Debian and Arch). Alternatively, this can be easily installed from PyPA by calling `pip install pyserial` (or `pip3`, depending on your system). If you do not have `pip` installed yet, you can typically find it as `python3-pip` using your package manager.

You can use make keygen to generate the keygen executable in the keygen subdirectory. make mcBits to build the project, or in the src/ folder, run make mcBits.bin. First run keygen executable to generate two files with the key in them. Then you can use the host-side script to send the keys directly to the device.

### Troubleshooting

At some point the boards might behave differently than one would expect, to a point where simply power-cycling the board does not help. In these cases, it is useful to be aware of a few trouble-shooting steps.

First, check if all the cables are attached properly. For the boards supported in this repository, connect TX to `PA3`, RX to `PA2` and GND to `GND`. Power is typically supplied using the mini-USB connector that is also used to flash code onto the board.

If the code in this repository does not appear to work correctly after flashing it on to the board, try pressing the `RST` button (optionally followed by re-flashing).

If you cannot flash new code onto the board, but are instead confronted with `WARN src/stlink-common.c: unknown chip id!`, try shorting the `BOOT0` and `VDD` pins and pressing `RST`. This selects the DFU bootloader. After that, optionally use `st-flash erase` before re-flashing the board.

If you cannot flash the code onto the board, and instead get `Error: Data length doesn't have a 32 bit alignment: +2 byte.`, make sure you are using a version of stlink for which [this issue](https://github.com/texane/stlink/issues/390) has been resolved. This affected L0 and L1 boards.
