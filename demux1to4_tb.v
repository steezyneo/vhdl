`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 15:40:54
// Design Name: 
// Module Name: demux1to4_tb
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


module demux1to4_tb();
  reg [1:0]s;
  reg I;
  wire [3:0]y;
  demux1to4 uut (s,I,y);
  
   initial begin
    
  #100 s=1'b00; I=1;
  #100 s=1'b01; I=1;
  #100 s=1'b10; I=1;
  #100 s=1'b11; I=1;
  end 
endmodule

