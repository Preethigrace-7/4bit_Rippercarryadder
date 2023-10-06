`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:34 08/03/2023
// Design Name:   busar_d
// Module Name:   E:/Lab/busarbitar3bit_d/busarb_tb.v
// Project Name:  busarbitar3bit_d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: busar_d
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module busarb_tb;

	// Inputs
	reg [2:0] r;
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	busar_d uut (
		.r(r), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);
integer i;


	initial begin
		// Initialize Inputs
		clk=0;#5;
		//forever #50 clk=~clk;
		rst = 1;
		#10;
		rst = 0;
		#10;
		for(i=0;i<8;i=i+1)
		begin
		{r}=i;#100;
		clk=~clk;
		end
 		// Add stimulus here
$finish;
	end
	
      
endmodule

