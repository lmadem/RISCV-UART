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
	<details>
    <summary> RISCV GNU ToolChain </summary>

```bash
git clone https://github.com/riscv/riscv-gnu-toolchain
sudo apt-get install autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool \  
patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev
./configure --prefix=/opt/riscv
make
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/52c64f8b-a5c1-4ba4-a3d8-67bfd3dbf75f)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/5c9dda41-58ab-4022-9086-9f89cb6f17c4)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/edd9d23a-5485-4cf3-8f20-f852abb99ba8)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/b1dffde7-1583-48a5-821e-d5c7c3ff88c0)


</details>	
	<details>
    <summary> OpenSTA </summary>

```bash
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
cmake ..
make
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/ef796255-fdda-4f02-9c82-4989537f4a49)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/bdb0f467-4b9f-4a66-a946-e267be8cc1d3)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/6bd8153c-191c-4bc1-a2d2-bd9407f85fce)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/e1683f08-fa85-4d26-917d-359ac24de46a)


</details>	
	<details>
    <summary> ngspice </summary>
		
```bash
After downloading the tarball from https://sourceforge.net/projects/ngspice/files/ to a local directory, unpack it using:
$ tar -zxvf ngspice-37.tar.gz
$ cd ngspice-37
$ mkdir release
$ cd release
$ ../configure  --with-x --with-readline=yes --disable-debug
$ make
$ sudo make install
```

![ngspice 1](https://github.com/lmadem/RISCV-UART/assets/93139766/cc71bc79-400e-4b69-a3e9-cb0f295284c2)

![ngspice 2](https://github.com/lmadem/RISCV-UART/assets/93139766/9320a9df-a258-4fd8-a7bd-3793e0a97684)

![ngspice 3](https://github.com/lmadem/RISCV-UART/assets/93139766/9df463b2-f453-4b49-9e20-9a120cf9bc2d)

</details>	
	<details>
    <summary> magic </summary>

```bash
$   sudo apt-get install m4
$   sudo apt-get install tcsh
$   sudo apt-get install csh
$   sudo apt-get install libx11-dev
$   sudo apt-get install tcl-dev tk-dev
$   sudo apt-get install libcairo2-dev
$   sudo apt-get install mesa-common-dev libglu1-mesa-dev
$   sudo apt-get install libncurses-dev
git clone https://github.com/RTimothyEdwards/magic
cd magic
./configure
make
make install
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/09a50dc5-c8bf-4921-983d-803a10068fa5)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/420a69ee-6445-4d5b-8bb2-c43b61410014)

</details>	
	<details>
    <summary> OpenLANE </summary>

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt install -y build-essential python3 python3-venv python3-pip make git

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
 | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot 

# After reboot
docker run hello-world
```
![image](https://github.com/lmadem/RISCV-UART/assets/93139766/5a58ddd5-dc79-47ea-aced-89fce6e1945e)

</details>	
	<details>
    <summary> Install PDKs and Tools </summary>

```bash
cd $HOME
git clone https://github.com/The-OpenROAD-Project/OpenLane
cd OpenLane
make
make test
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/7c522810-b617-4193-b53c-da07849f297c)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/7f50d4a2-e131-41d9-8f8d-03a59f3783fd)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/a255c6c1-eb11-4d43-9896-5c83c32d1667)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/cb80f786-c645-4987-a654-8d49781c3e09)




</details>

## TASK2

Defining the black box design of UART with input ports, and output ports

</details>	
	<details>
    <summary> Transmitter(Tx) Block </summary>
<li> The transimtter and reciever blocks must agree on a baud rate. Based on system clock frequency and baud rate, the clks_per_bit is calculated </li>
<li>Inputs : i_clock, i_TX_Start, i_TX_Byte </li>
<li>i_clock : This is a system clock </li>
<li>i_TX_Start : This is a control signal to start the Transimtter block </li>
<li>i_TX_Byte : This is 8-bit input data stream </li>
<li>Outputs : o_TX_Active, o_TX_Serial, o_TX_Done</li>
<li>o_TX_Active : This is a output assert signal, get high when there is start bit and turns low after the stop bit</li>
<li>o_TX_Serial : Serial 1-bit data output and it samples the i_TX_Byte</li>
<li>o_TX_Done : When the transmit is complete, this signal be driven high for one clock cycle</li>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/d1b109c9-82f0-458f-9023-aeed969164ab)

</details>	
	<details>
    <summary> Reciever(Rx) Block </summary>

<li>Inputs : i_clock, i_RX_Serial</li>
<li>i_clock : This is a system clock</li>
<li>i_RX_Serial : Serial bit data input</li>
<li>Outputs : o_RX_Byte, o_RX_Done</li>
<li>o_RX_Byte : This is 8-bit data output</li>
<li>o_RX_Done : When the receive is complete, this signal be driven high for one clock cycle</li>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/2dd7308c-22bc-4376-9e48-d56d91417111)

</details>	
	<details>
    <summary> UART Packet Format </summary>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/f1e98697-e1c3-4a66-8e87-5a8cb4e7ebca)


</details>

## TASK3

Basics of Functional Simulation. Upload lab snapshots from iverilog and gtkwave on your GitHub repo with terminal name being clearly visible









