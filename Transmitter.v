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
