`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:05:22
// Design Name: 
// Module Name: allgates
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


module allgates(    input a,    input b,    output p,    output q,    output r,    output s,    output t,    output u,
 output v      );
   assign p=~a;
   assign q=(a&b);
   assign r=(a|b);
   assign s=~(a&b);
   assign t=~(a|b);
   assign u=(a^b);
   assign v=~(a^b);
endmodule
