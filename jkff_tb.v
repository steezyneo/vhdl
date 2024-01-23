`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:35:10
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb();
  reg j,k,clk,reset;
  wire q;
  jkff uut (j,k,clk,reset,q);
  
  initial begin
    j=0; k=0; clk=0; reset=0;
    forever
    #50 clk=~clk;
  end
  initial begin
    #100 j=0; k=0; reset=1;
    #100 j=1; k=0; reset=0;
    #100 j=0; k=1; reset=0;
    #100 j=0; k=0; reset=0;
    #100 j=1; k=1; reset=0;
    #100 j=1; k=1; reset=0;
    #100 j=0; k=0; reset=0;
  end 
endmodule


