`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:03:31
// Design Name: 
// Module Name: paralleladder
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


module paralleladder(
    input [3:0] a,
    input [3:0] b,
    input c,
    output [3:0] sum,
    output cout
    );
    wire w0,w1,w2;
    fulladder f1 (a[0],b[0],c,sum[0],w0);
    fulladder f2 (a[1],b[1],w0,sum[1],w1);
    fulladder f3 (a[2],b[2],w1,sum[2],w2);
    fulladder f4 (a[3],b[3],w2,sum[3],cout);
endmodule