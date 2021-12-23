# Xilinx XC9536XL CPLD JTAG Programmer using FT232RL FTDI
This repo shows how to make a JTAG programmer using the FT232RL FTDI for the Xilinx CPLD XC9536XL along with some applications:<br />
+ Implementing a simple **AND** | **OR** logic gate.
+ LED Flasher using 555 Timer IC.
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

## VCC & GND Pins
+ VCC runs at **3.3V** taken from the **FT232RL FTDI**.
+ Connect the CPLD's VCC & GND pins as mentioned in the table below.

| VCC | GND |
| ------ | ------|
| Pin 21  | Pin 10|
| Pin 41| Pin 23|
| Pin 32 | Pin 31|

## SVF File Generation
1. Set the environment variable XILINX to the directory containing ISE.
2. Put the path in the directory where iMPACT.exe is located (...\Xilinx\14.7\ISE_DS\ISE\bin\nt64).
![Capture](https://user-images.githubusercontent.com/48930532/145686903-192a21b8-6088-4204-9ceb-20474df41dff.PNG)
3. Create a text file script.txt like the one below.

```
setMode -bsfile
setCable -port svf -file xxx.svf
addDevice -position 1 -file xxx.jed
Program -p 1 -e -v
exit
```
4. At the command prompt, do the following:
```
impact -batch script.txt
```
## Programming the CPLD
The CPLD programmer runs it from the command line with prog_cpld.exe.
```
PROG_CPLD.exe -v -c xxx.svf
```
-v is in verbose mode and shows progress.<br />
-c is an option to compare the value of TDO with the expected value.<br />
-v isparticularly slow, so omit it if you don't need it.<br />
If you omit -c, it will be faster, but you will not be able to check if it waswritten correctly.<br />
If programmed correctly,<br />
**<<< All TDO outputs matched to the expected values! >>>** will be displayed.<br />
If you omit the -c option, this message will not appear.
## SVF Player Software
Download:[PROG_CPLD.zip](https://github.com/mostafa-1997/Xilinx_XC9536XL_CPLD_FT232RL_JTAG_PROGRAMMER/files/7697485/PROG_CPLD.zip)

## Reference
https://tulip-house.ddo.jp/digital/PROG_CPLD/index.html

## Detailed video
[![CPLD](https://img.youtube.com/vi/UACzPj62klc/0.jpg)](https://youtu.be/UACzPj62klc)
