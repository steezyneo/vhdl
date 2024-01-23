`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:23:51
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
  reg t,clk,reset;
  wire q;
  tff uut (t,clk,reset,q);
  
  initial begin
    t=0; clk=0; reset=0;
    forever
    #50 clk=~clk;
  end
  initial begin
    #100 t=0; reset=1;
     #100 t=1; reset=0;
      #100 t=1; reset=0;
       #100 t=1; reset=0;
        #100 t=0; reset=0;
  end 
endmodule

 

