`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:52:16
// Design Name: 
// Module Name: srff_tb
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


module srff_tb();
  reg s,r,clk,reset;
  wire q;
  srff uut (s,r,clk,reset,q);
  
  initial begin
    s=0; r=0; clk=0; reset=0;
    forever
    #50 clk=~clk;
  end
  initial begin
    
  #100 s=1; r=0;reset=0;
  #100 s=0; r=0;reset=0;
  #100 s=1; r=1;reset=0;
  #100 s=0; r=0;reset=0;
  #100 s=1; r=0;reset=0;
  #100 s=1; r=1;reset=0;
  #100 s=1; r=0;reset=1;
  
  end 
endmodule

