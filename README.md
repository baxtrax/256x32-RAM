# 256kx32-RAM
A 256x32 RAM Module that is made using Verilog. Can read and write data. Used in conjuction with future projects to create a fully functioning CPU.

## Details
### The Top Level 0 Diagram
A overview diagram of the RAM and its inputs and outputs

![alt text](https://github.com/baxtrax/<imagehere>)


The point of RAM is to give the CPU somewhere to quickly store and read data is other parts of the memory hierarchy are full. Such as the Cache.

### Testbench and verification
The RAM module is composed into one file. The testbench is also included to verify its functionality. 

#### Storing Verification:
![alt text](https://github.com/baxtrax/<imagehere>)
#### Reading Verification
![alt text](https://github.com/baxtrax/<imagehere>)

## Running it
You can use these files with any type of simulation software. This project I personally used Quartus Prime and its simulation package that comes with named ModelSim(Now updated to QuestaSim) but any software that can run and simulate verilog code should do just fine as well.
