`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:00:05
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb(    );
    reg a,b;
    wire sum,carry;
    halfadder uut(a,b,sum,carry);
    initial begin
    #100 a=0; b=0;
    #100 a=1; b=0;
    #100 a=0; b=1;
    #100 a=1; b=1;
    end
endmodule
