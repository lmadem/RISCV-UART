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









