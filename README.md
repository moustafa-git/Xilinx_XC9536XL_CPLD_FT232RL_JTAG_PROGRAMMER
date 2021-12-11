# Xilinx XC9536XL CPLD JTAG Programmer using FT232RL FTDI
This repo shows how to make a JTAG programmer using the FT232RL FTDI for the Xilinx CPLD XC9536XL along with some applications.
## Schematic
[Xilinx_CPLD_XC9536XL_FT232RL_Schematic.pdf](https://github.com/mostafa-1997/Xilinx_XC9536XL_CPLD_FT232RL_JTAG_PROGRAMMER/files/7697454/Xilinx_CPLD_XC9536XL_FT232RL_Schematic.pdf)

<img src="https://user-images.githubusercontent.com/48930532/145685755-cbae6665-04a5-4eb7-8c98-3df3f35af5f1.PNG" width="250">

<img src="https://user-images.githubusercontent.com/48930532/145686186-ed0be05b-33e5-49af-94aa-52858e1e3939.jpeg" width="250">

## JTAG Pins
Interface the JTAG pins with the FT232RL as mentioned in the table below.
| CPLD | FT232RL |
| ------ | ------|
| Pin 15 (TDI)   | TXD |
| Pin 16 (TMS) | RXD|
| Pin 17 (TCK)    | RTS|
| Pin 30 (TDO)    | CTS|

## SVF Player Software
Download:[PROG_CPLD.zip](https://github.com/mostafa-1997/Xilinx_XC9536XL_CPLD_FT232RL_JTAG_PROGRAMMER/files/7697485/PROG_CPLD.zip)
