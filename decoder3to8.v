`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 20:56:40
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0] I,
    output [7:0] Y
    );
    assign Y[0]=(~(I[2])&~(I[1])&~(I[0]));
    assign Y[1]=(~(I[2])&~(I[1])&(I[0]));
    assign Y[2]=(~(I[2])&(I[1])&~(I[0]));
    assign Y[3]=(~(I[2])&(I[1])&(I[0]));
    assign Y[4]=((I[2])&~(I[1])&~(I[0]));
    assign Y[5]=((I[2])&~(I[1])&(I[0]));
    assign Y[6]=((I[2])&(I[1])&~(I[0]));
    assign Y[7]=((I[2])&(I[1])&(I[0]));
endmodule