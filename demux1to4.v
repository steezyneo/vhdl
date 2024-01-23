`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 15:39:43
// Design Name: 
// Module Name: demux1to4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux1to4(
  input [1:0]s,
  input I,
  output [3:0] y);
 assign y[0]=I&~s[0]&~s[1];
 assign y[1]=I&s[0]&~s[1];
 assign y[2]=I&~s[0]&s[1];
 assign y[3]=I&s[0]&s[1];
 endmodule

