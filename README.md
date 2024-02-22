# RISCV-UART
This repository is intended to document the learning outcomes of a 4-week research internship program on RISCV squadron mini board designed by VLSI System Design
## Task 1
Create GitHub repo. Windows OS, 1TB HDD, 16GB RAM. Next Task - Allocate 8GB RAM, and 100GB HDD for Oracle Virtual Machine and install Yosys, iverilog, gtkwave. Refer to this course to install Ubuntu 20.04 using VM.

### Installed the required tools

</details>	
	<details>
    <summary> Iverilog </summary>

```bash
sudo apt-get install iverilog
 ```
![image](https://github.com/lmadem/RISCV-UART/assets/93139766/fe99c4d5-38ff-4006-aea9-3bb1c84bce75)

</details>	
	<details>
    <summary> GTKWave </summary>

 ```bash
sudo apt-get install gtkwave
 ```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/a51590c9-7c9e-4125-9ef7-142d848e8164)

</details>	
	<details>
    <summary> Yosys </summary>

   
```bash
git clone https://github.com/YosysHQ/yosys.git
cd yosys 
sudo apt install make 
sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
make config-gcc
make 
sudo make install
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/8ef34f9b-042a-4422-94b7-67d36db38b0b)
![image](https://github.com/lmadem/RISCV-UART/assets/93139766/b7bee628-7ece-4636-b866-06f06dd856d8)
![image](https://github.com/lmadem/RISCV-UART/assets/93139766/48f1b6b8-8aa8-4980-84fd-1e0983b94904)
![image](https://github.com/lmadem/RISCV-UART/assets/93139766/8d6ca6b3-c93d-4a4b-9f07-aa600040e998)

</details>

### TASK2

Defining the black box design of UART with input ports, and output ports

</details>	
	<details>
    <summary> Transmitter(Tx) Block </summary>
<li> The transimtter and reciever blocks must agree on a baud rate. Based on system clock frequency and baud rate, the clks_per_bit is calculated </li>
<li>Inputs : i_clock, i_TX_Start, i_TX_Byte </li>
<li>i_clock : This is a system clock </li>
<li>i_TX_Start : This is a control signal to asset the Transimtter block </li>
<li>i_TX_Byte : This is 8-bit input data stream </li>
<li>Outputs : o_TX_Active, o_TX_Serial, o_TX_Done</li>
<li>o_TX_Active : This is a output assert signal, get high when there it start bit and turns low after the stop bit</li>
<li>o_TX_Serial : Serial 1-bit data output and it samples the i_TX_Byte</li>
<li>o_TX_Done : When the transmit is complete, this will be driven high for one clock cycle</li>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/d1b109c9-82f0-458f-9023-aeed969164ab)

</details>	
	<details>
    <summary> Reciever(Rx) Block </summary>

<li>Inputs : i_clock, i_RX_Serial</li>
<li>i_clock : This is a system clock</li>
<li>i_RX_Serial : Serial bit data input</li>
<li>Outputs : o_RX_Byte, o_RX_Done</li>
<li>o_RX_Byte : This is 8-bit data output</li>
<li>o_RX_Done : When the receive is complate, this will be driven high for one clock cycle</li>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/2dd7308c-22bc-4376-9e48-d56d91417111)













