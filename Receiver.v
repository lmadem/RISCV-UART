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
