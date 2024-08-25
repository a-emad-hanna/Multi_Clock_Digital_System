`timescale 1us/1ns

module  System_Top_tb;

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter CLK_PERIOD_1 = 20;
parameter CLK_PERIOD_2 = 32 * (1000/115.2);
parameter OPSIZE = 8, OUT_SIZE = OPSIZE*2, DSIZE = 8, ASIZE = 4;
parameter NUM_STAGES = 2;

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg   REF_CLK_tb, UART_CLK_tb, RST_tb, RX_IN_tb;
wire  TX_OUT_tb, Stop_Error_tb, Parity_Error_tb;

////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

initial 
begin
   // System Functions
   $dumpfile("SYS_CTRL_DUMP.vcd");       
   $dumpvars;

   // initialization
   initialize();
   #(CLK_PERIOD_1/2)  
   reset();
   #(CLK_PERIOD_1*2)

   // Test Case 1
   serialize({2'b10, 8'haa, 1'b0});
   serialize({2'b11, 8'h08, 1'b0});
   serialize({2'b11, 8'h1f, 1'b0});

   serialize({2'b10, 8'haa, 1'b0});
   serialize({2'b11, 8'h07, 1'b0});
   serialize({2'b11, 8'h1f, 1'b0});

   // Test Case 2
   serialize({2'b10, 8'hcc, 1'b0});
   serialize({2'b11, 8'd128, 1'b0});
   serialize({2'b11, 8'd128, 1'b0});
   serialize({2'b11, 8'b10, 1'b0});

   // Test Case 3
   serialize({2'b10, 8'hbb, 1'b0});
   serialize({2'b11, 8'h08, 1'b0});

   // Test Case 4
   serialize({2'b10, 8'hbb, 1'b0});
   serialize({2'b11, 8'h07, 1'b0});

   #(CLK_PERIOD_2*3600)
   $stop;
end

////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize;
begin
   REF_CLK_tb = 1'b0;
   UART_CLK_tb = 1'b0;
   RST_tb = 1'b1;
   RX_IN_tb = 1'b1;
end
endtask

///////////////////////// RESET /////////////////////////

task reset;
begin
   RST_tb  =  'b0;
   #(CLK_PERIOD_1)
   RST_tb   = 'b1;
end
endtask

///////////////////// Serialize ////////////////////////

task serialize;
input [10:0]  IN_Data;

integer i, j, last;

begin
   for (i = 0; i <= 10; i = i + 1)
   begin
      for (j = 0; j < 32; j = j + 1)
      begin
         RX_IN_tb = IN_Data[i];
         #(CLK_PERIOD_2)
         i = i + 0;
      end
   end 
end
endtask

////////////////////////////////////////////////////////
////////////////// Clock Generator  ////////////////////
////////////////////////////////////////////////////////

always #(CLK_PERIOD_1/2)  REF_CLK_tb = ~REF_CLK_tb;
always #(CLK_PERIOD_2/2)  UART_CLK_tb = ~UART_CLK_tb;

////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////

System_Top #(.OPSIZE(OPSIZE), .OUT_SIZE(OUT_SIZE), .DSIZE(DSIZE), .ASIZE(ASIZE), .NUM_STAGES(NUM_STAGES)) DUT
(
   .REF_CLK(REF_CLK_tb),
   .UART_CLK(UART_CLK_tb),
   .RST(RST_tb),
   .RX_IN(RX_IN_tb),
   .Stop_Error(Stop_Error_tb),
   .Parity_Error(Parity_Error_tb),
   .TX_OUT(TX_OUT_tb)
);

endmodule
