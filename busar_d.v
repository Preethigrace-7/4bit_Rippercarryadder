`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:57 08/01/2023 
// Design Name: 
// Module Name:    busar_d 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module busar_d(
input [2:0]r,
input clk,rst,
output [2:0]out
    );
 wire a;
 wire b;
 wire c;
 
 
 begin
 and_d a1(r[0],1,out[0]);
 and_d a2(~r[0],1,b);
 and_d a3(r[1],b,out[1]);
 and_d a4(~r[1],b,c);
 and_d a5(r[2],c,out[2]);
 
end
	 


endmodule
