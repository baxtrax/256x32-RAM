# 256kx32-RAM
A 256x32 RAM Module that is made using Verilog. Can read and write data. Used in conjuction with future projects to create a fully functioning CPU.

## Details
### The Top Level 0 Diagram
A overview diagram of the RAM and its inputs and outputs

![alt text](https://github.com/baxtrax/256x32-RAM/blob/main/Images/Level0.png?raw=true)


The point of RAM is to give the CPU somewhere to quickly store and read data is other parts of the memory hierarchy are full. Such as the Cache.

### Testbench and verification
The RAM module is composed into one file. The testbench is also included to verify its functionality. 

#### Writing/Reading Verification:
##### Wrote Values
![alt text](https://github.com/baxtrax/256x32-RAM/blob/main/Images/Lab5Write.png?raw=true)
##### Reading
![alt text](https://github.com/baxtrax/256x32-RAM/blob/main/Images/Lab5Read.png?raw=true)

## Running it
You can use these files with any type of simulation software. This project I personally used Quartus Prime and its simulation package that comes with named ModelSim(Now updated to QuestaSim) but any software that can run and simulate verilog code should do just fine as well.
