`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 20:52:48
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
  reg d,clk,reset;
  wire q;
  tff uut (d,clk,reset,q);
  
  initial begin
    d=0; clk=0; reset=0;
    forever
    #50 clk=~clk;
  end
  initial begin
    #100 d=0; reset=1;
    #100 d=1; reset=0;
    #100 d=1; reset=0;
    #100 d=1; reset=0;
    #100 d=0; reset=0;
  end 
endmodule
