# romdump
## ROM Dumper for MSX

### Description

ROM Dumper for MSX (romdump, for short) is a tool to extract the binary contents of a cartridge and save to a file.

### Features

It runs from MSX-BASIC and is currently limited to 16kB ROMs located in primary slot 1 (usually, the top slot on a MSX machine), at the 04000h address (also known as frame 1 or page 1 on MSX). It's written in both Z80 Assembly (the part that reads the ROM) and MSX-BASIC (the part that writes it to storage).

### System requirements

* At least 32kB of RAM
* Disk interface

### How to use

From MSX-BASIC, type the following command:

`RUN "ROMDUMP.BAS"`

It will run for a while, and print some hexadecimal addresses on the screen. When it is done, it returns to the MSX-BASIC prompt. A 16kB file named ROMDUMP.ROM will have been generated.

### Planned improvements

* Using the BIOS for slot selection instead of direct hardware access;
* Being able to select other primary or secondary slots;
* Being able to select other frames;
* Being able to dump ROMs with arbitrary sizes;
* Being able to easily change the file name of the dumped ROM;
* Performance improvements.
