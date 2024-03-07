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

Designed a simple UART model with Transmitter and Receiver Blocks with BAUD 115200. Please find the below verilog files, waveforms and screenshots

</details>	
	<details>
    <summary> Transmitter Block </summary>

```bash
//This file containts the UART Transmitter Block. It is able to transfer one start bit, eight bit of serial data, one stop bit and no parity bit. When the transmit is complete, o_tx_done will be driven high for one clock cycle


//set parameter CLKS_PER_BIT as follows
//CLK_PER_BIT = (Frequency of i_clock) / (Frequency of UART)
//Example : 10 MHz clock, 115200 baud rate
// (10000000 / 115200) = 87


module UART_Transmitter #(parameter CLKS_PER_BIT = 87)
  (input i_clock, //System Clock
   input i_TX_Start, //Start Signal
   input [7:0] i_TX_Byte, //Data bits
   output o_TX_Active, //Output assert signal to indicate the data transfer
   output reg o_TX_Serial, //Output serial data
   output o_TX_Done //Output assert signal to indicate the completion of data transfer
  );
  
  parameter S_IDLE = 3'b000;
  parameter S_TX_START_BIT = 3'b001;
  parameter S_TX_DATA_BITS = 3'b010;
  parameter S_TX_STOP_BIT = 3'b011;
  parameter S_CLEANUP = 3'b100;
  
  //Initialising values to the below internal registers as there is no reset in the design
  
  reg [2:0] r_SM_main = 0; //register to store values for the state machine logic
  reg [7:0] r_clock_count = 0; //Counter to calcualte the CLKS_PER_BIT
  reg [2:0] r_bit_index = 0; //Counter for the bit indexes
  reg [7:0] r_TX_data = 0; //Internal register to handlr the input data : i_TX_Byte
  reg r_TX_Done; //Internal signal for output - indicate the completion of data transfer
  reg r_TX_Active; //Internal signal for output - indicate the start and end of data transfer
  
  always @(posedge i_clock)
    begin
      case(r_SM_main)
        
        // IDLE STATE
        S_IDLE :
          begin 
            r_TX_Done <= 0;
            o_TX_Serial <= 0;
            r_clock_count <= 0;
            r_bit_index <= 0;
            
            if(i_TX_Start == 1'b1)
              begin
                r_TX_Active <= 1;
                r_TX_data <= i_TX_Byte;
                r_SM_main <= S_TX_START_BIT;
              end
            else
              r_SM_main <= S_IDLE;
          end
        
        
        //Send out start bit : 0
        // START BIT
        S_TX_START_BIT : 
          begin 
            o_TX_Serial <= 0;
            //wait till CLKS_PER_BIT - 1 for the start bit to finish
            if(r_clock_count < CLKS_PER_BIT - 1)
              begin
                r_clock_count = r_clock_count + 1; //Incrementing Counter
                r_SM_main <= S_TX_START_BIT;
              end
            else
              begin
                r_clock_count <= 0; // assigning counter to zero
                r_SM_main <= S_TX_DATA_BITS;
              end    
          end
        
        //Wait CLKS_PER_BIT - 1 clock cycles for data bits to finish
        // DATA BITS
        S_TX_DATA_BITS :
          begin 
            o_TX_Serial = r_TX_data[r_bit_index];
            if(r_clock_count < CLKS_PER_BIT - 1)
              begin
                r_clock_count <= r_clock_count + 1;
                r_SM_main <= S_TX_DATA_BITS;
              end
            else
              begin
                r_clock_count <= 0;
                //check if we have sent out all bits
                if(r_bit_index < 7)
                  begin
                    r_bit_index <= r_bit_index + 1;
                    r_SM_main <= S_TX_DATA_BITS;
                  end
                else
                  begin
                    r_bit_index <= 0;
                    r_SM_main <= S_TX_STOP_BIT;
                  end
              end
          end
        
        //Send out stop bit : 1
        // STOP BIT 
        S_TX_STOP_BIT :
          begin 
            o_TX_Serial <= 1;
            //wait CLKS_PER_BIT - 1 clock cyles for stop bit to finish
            if(r_clock_count < CLKS_PER_BIT - 1)
              begin
                r_clock_count <= r_clock_count + 1;
                r_SM_main <= S_TX_STOP_BIT;
              end
            else
              begin
                r_TX_Done <= 1;
                r_clock_count <= 0;
                r_SM_main <= S_CLEANUP;
                r_TX_Active <= 0;
              end
          end
        
        //stay here for one clock
        // CLEANUP STATEo_
        S_CLEANUP :
          begin 
            r_TX_Done <= 1;
            r_SM_main <= S_IDLE;
          end
        
        default : r_SM_main <= S_IDLE;
           
      endcase
    end
  
  assign o_TX_Active = r_TX_Active;
  assign o_TX_Done = r_TX_Done;
  
  
endmodule
```

</details>	
	<details>
    <summary> Receiver Block </summary>

```bash
//This file containts the UART Receiver Block. It is able to receive one start bit, eight bit of serial data, one stop bit and no parity bit. When the receive is complete, o_RX_Done will be driven high for one clock cycle


//set parameter CLKS_PER_BIT as follows
//CLK_PER_BIT = (Frequency of i_clock) / (Frequency of UART)
//Example : 10 MHz clock, 115200 baud rate
// (10000000 / 115200) = 87

module UART_Receiver #(parameter CLKS_PER_BIT = 87) (
  input i_clock, //System clock
  input i_RX_Serial, //Serial bit data input
  output [7:0] o_RX_Byte, // Output data 
  output o_RX_Done // Output signal : asserts high when the recieve is complete
);
  
  parameter S_IDLE = 3'b000;
  parameter S_RX_START_BIT = 3'b001;
  parameter S_RX_DATA_BITS = 3'b010;
  parameter S_RX_STOP_BIT = 3'b011;
  parameter S_CLEANUP = 3'b100;
  
  //Initialising values to all the internal registers as there is no reset
  reg r_RX_Data1 = 1; //for flipflop synchronizer
  reg r_RX_Data = 1; //for flipflop synchronizer
  
  reg [2:0] r_SM_main = 0; //register to store values for the state machine logic
  reg [7:0] r_clock_count = 0; //Counter to validate the CLKS_PER_BIT
  reg [2:0] r_bit_index = 0; //Counter for the bit indexes - 8 bits in total
  reg [7:0] r_RX_Byte = 0; //Internal register to handle the output data : o_RX_Byte
  reg r_RX_Done; //Internal signal for output - indicates the completion of data transfer
  
  
  //Purpose : Double-register for the incoming data : similar to 2 flipflop sync
  always @(posedge i_clock)
    begin
      r_RX_Data1 <= i_RX_Serial;
      r_RX_Data <= r_RX_Data1;
    end
  
  
  //State Machine Logic
  
  always @(posedge i_clock)
    begin
      case(r_SM_main)
        
        //IDLE STATE
        S_IDLE :
          begin
            r_RX_Done <= 0;
            r_clock_count <= 0;
            r_bit_index <= 0;
            
            if(r_RX_Data == 0) //Start bit detected
              r_SM_main <= S_RX_START_BIT;
            else
              r_SM_main <= S_IDLE;
          end
        
        
        //check middle of the bit to make sure if it is still low
        //START BIT
        S_RX_START_BIT :
          begin
            if(r_clock_count == (CLKS_PER_BIT - 1) / 2)
              begin
                if(r_RX_Data == 0)
                  begin
                    r_clock_count <= 0; //reset counter, found the middle
                    r_SM_main <= S_RX_DATA_BITS;
                  end
                else
                  r_SM_main <= S_RX_START_BIT;
              end
            else
              begin
                r_clock_count <= r_clock_count + 1; 
                r_SM_main <= S_RX_START_BIT;
              end
          end
        
        
        //wait CLKS_PER_BIT - 1 clock cycles to sample serial data
        //DATA BITS
        S_RX_DATA_BITS :
          begin
            if(r_clock_count < CLKS_PER_BIT - 1)
              begin
                r_clock_count <= r_clock_count + 1;
                r_SM_main <= S_RX_DATA_BITS;
              end
            else
              begin
                r_clock_count <= 0;
                r_RX_Byte[r_bit_index] <= r_RX_Data;
                
                //check if we have received all bits
                if(r_bit_index < 7)
                  begin
                    r_bit_index <= r_bit_index + 1;
                    r_SM_main <= S_RX_DATA_BITS;
                  end
                else
                  begin
                    r_bit_index <= 0;
                    r_SM_main <= S_RX_STOP_BIT;
                  end
              end
          end
        
        
        //receive stop bit = 1
        //STOP BIT
        S_RX_STOP_BIT :
          begin
            //wait CLKS_PER_BIT - 1 clock cycles for stop bit to finish
            if(r_clock_count < CLKS_PER_BIT - 1)
              begin
                r_clock_count <= r_clock_count + 1;
                r_SM_main <= S_RX_STOP_BIT;
              end
            else
              begin
                r_RX_Done <= 1;
                r_clock_count <= 0;
                r_SM_main <= S_CLEANUP;
              end
          end
        
        //Stay here for one clock
        S_CLEANUP :
          begin
            r_SM_main <= S_IDLE;
            r_RX_Done <= 0;
          end
        
        default :
          r_SM_main <= S_IDLE;
        
      endcase
    end
  
  assign o_RX_Done = r_RX_Done;
  assign o_RX_Byte = r_RX_Byte;

endmodule

```

</details>	
	<details>
    <summary> Testbench </summary>

```bash

`include "Transmitter.v"
`include "Receiver.v"
`timescale 1ns/10ps;
module UART_tb;
  //Testbench uses a 10MHz clock
  //Interface to 115200 baud UART
  // 10000000 / 115200 = 87 clocks per bit
  
  parameter CLOCK_PERIOD_NS = 100;
  parameter CLKS_PER_BIT = 87;
  parameter BIT_PERIOD = 8700;
  
  reg i_clock;
  reg i_TX_Start;
  reg [7:0] i_TX_Byte;
  reg i_RX_Serial;
  
  wire o_TX_Done;
  wire o_TX_Serial;
  wire o_TX_Active;
  wire [7:0] o_RX_Byte;
  wire o_RX_Done;
  
  task preset;
    begin
      i_clock <= 0;
      i_TX_Start <= 0;
      i_TX_Byte <= 0;
      i_RX_Serial <= 1;
    end
  endtask
  
  always #(CLOCK_PERIOD_NS/2) i_clock = ~i_clock;
  
  UART_Transmitter #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_tx (
    .i_clock(i_clock),
    .i_TX_Start(i_TX_Start),
    .i_TX_Byte(i_TX_Byte),
    .o_TX_Active(o_TX_Active),
    .o_TX_Serial(o_TX_Serial),
    .o_TX_Done(o_TX_Done)
  );
  
  UART_Receiver #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_rx (
    .i_clock(i_clock),
    .i_RX_Serial(i_RX_Serial),
    .o_RX_Byte(o_RX_Byte),
    .o_RX_Done(o_RX_Done)
  );
  
  task UART_WRITE_BYTE(input [7:0] data_in);
    integer j;
    begin
      
      //Send Start Bit
      i_RX_Serial <= 0;
      #(BIT_PERIOD);
      #1000;
      
      //Send Data Byte
      for(j = 0;j<8;j=j+1)
        begin
          i_RX_Serial <= data_in[j];
          #(BIT_PERIOD);
        end
      
      //Send Stop Bit
      i_RX_Serial <= 1;
      #(BIT_PERIOD);
    end
  endtask
  
  
  initial
    begin
      preset;
      
      // Transmitter 
      repeat(3) @(posedge i_clock);
      i_TX_Start <= 1;
      i_TX_Byte <= 8'hCD;
      @(posedge i_clock);
      i_TX_Start <= 0;
      @(posedge o_TX_Done);
      
      @(posedge i_clock);
      UART_WRITE_BYTE(8'h3F);
      @(posedge i_clock);
      
      if(o_RX_Byte == 8'h3F)
        $display("Test Passed - Correct Byte Received:");
      else
        $display("Test Failed - InCorrect Byte Received:");
      
      $finish;
    end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,UART_tb.uart_tx);
    $dumpvars(0,UART_tb.uart_rx);
  end
  
endmodule

```

</details>	
	<details>
    <summary> Execution Steps </summary>

```bash
iverilog testbench.v
./a.out
gtkwave dump.vcd
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/f017a258-27c9-4f16-8031-aed741628123)

</details>	
	<details>
    <summary> Waveforms </summary>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/3a186c56-9d54-44ae-8195-92e882f0eea8)


</details>

## TASK4

Perform Synthesis for the UART design, followed by gate level simulation. Upload snapshots from Yosys, gtkwave pre-synthesis and post-synthesis simulation waveforms on GitHub Repo

The goal of this task is to convert the RTL design into the gate level netlist. This task was performed using yosys tool. It takes RTL design and the liberty file(.lib) as inputs and gives the netlist as an end result after synthesis. Please look at the below highlights for more information.


</details>	
	<details>
    <summary> Pre-Synthesis - Simulation Results </summary>

<li>Screenshots of gtkwave and iverilog</li>

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/917f7ae9-9015-4a28-b9d6-454b34d9d371)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/e40a9415-e483-4fcc-9de7-fedfc92dbcd3)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/47b1f003-8ea2-4f5d-97d6-d555d31dcedd)


</details>	
	<details>
    <summary> Execution Steps for Synthesis </summary>

<li>I have two blocks: Transmitter and Receiver in the design and both of them are independent blocks. Repeated the below mentioned steps for receiver block to generate reciever_netlist file</li>

```bash
Invoke yosys tool : $ yosys
read liberty(.lib) files : $ read_liberty -lib sky130RTLDesignAndSynthesisWorkshop/my_lib/sky130_fd_sc_hd__tt_025C_1v80.lib
reading RTL design files : $ read_verilog Transmitter.v
Synthesis step : $ synth -top UART_Transmitter(give module name)
$ abc -liberty sky130RTLDesignAndSynthesisWorkshop/my_lib/sky130_fd_sc_hd__tt_025C_1v80.lib
Write converted netlist to a .v file : $ write_verilog -noattr Trasmitter_netlist.v
```

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/b9953cc0-d293-4841-a4f4-0be372712b42)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/1ca71bfc-b6a7-4557-b5d2-68b787a06ae2)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/a3c0071f-4862-4ec5-b88b-20c154791320)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/13b17977-4b03-4313-9d6e-b62534e33312)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/d85ccd70-e4fa-4cd8-9107-928517e16440)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/e01303e1-37b3-43dc-abd5-2c08105bf86c)


</details>	
	<details>
    <summary> Post Synthesis - Simulation Results </summary>

<li>Screenshots of gtkwave and iverilog</li>


![image](https://github.com/lmadem/RISCV-UART/assets/93139766/dfc4627f-32f2-49d5-ac8e-e19ca1d693c9)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/08b56e4d-71b9-474e-b11d-2dbc2125d0f8)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/88da4135-43b3-4b85-986a-eb11f47071bc)

![image](https://github.com/lmadem/RISCV-UART/assets/93139766/1b26ace6-1163-483c-856d-068f622d0a7a)


</details>	
	<details>
    <summary> Observations </summary>

The functional simulation results and post-synthesis results were same


## References

https://nandland.com/uart-rs-232-serial-port-com-port/
https://nandland.com/uart-serial-port-module/















