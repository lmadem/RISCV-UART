//`include "Transmitter.v"
//`include "Receiver.v"
//`timescale 1ns/10ps;
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
