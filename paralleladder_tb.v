`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:04:24
// Design Name: 
// Module Name: paralleladder_tb
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


module paralleladder_tb(    );
reg [3:0] a;
reg [3:0] b;
reg c;
wire [3:0] sum;
wire cout;
paralleladder uut (a,b,c,sum,cout);
initial begin
#100 a[3:0]=4'b 0001; b[3:0]=4'b 0001; c=1'b 0;
#100 a[3:0]=4'b 0001; b[3:0]=4'b 0001; c=1'b 1;
#100 a[3:0]=4'b 0001; b[3:0]=4'b 0001; c=1'b 1;
#100 a[3:0]=4'b 0101; b[3:0]=4'b 1001; c=1'b 1;
#100 a[3:0]=4'b 1011; b[3:0]=4'b 0011; c=1'b 1;
#100 a[3:0]=4'b 1011; b[3:0]=4'b 1011; c=1'b 1;
end
endmodule