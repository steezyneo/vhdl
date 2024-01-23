`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:58:39
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb;  
 reg [1:0] A, B;  
 wire A_less_B, A_equal_B, A_greater_B;  
  
 // device under test  
 comparator dut(A,B,A_less_B, A_equal_B, A_greater_B);  
 initial begin  
   
   #100 A=00; B=00;
    #100 A=00; B=01;
    #100 A=00; B=10;
    #100 A=00; B=11;
    #100 A=11; B=00;
    #100 A=11; B=01;
    #100 A=11; B=10;
    #100 A=11; B=11;
 end   
 endmodule

