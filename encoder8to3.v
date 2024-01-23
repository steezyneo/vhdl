`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 01:19:37
// Design Name: 
// Module Name: encoder8to3
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


module encoder8to3(
    input [7:0] I,
    output [2:0] Y
    );
    assign Y[0]=(I[7]|I[5]|I[3]|I[1]);
    assign Y[1]=(I[7]|I[6]|I[3]|I[2]);
    assign Y[2]=(I[7]|I[6]|I[5]|I[4]);
    
endmodule

