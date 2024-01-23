`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 01:22:38
// Design Name: 
// Module Name: encoder8to3_tb
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


module encoder8to3_tb(    );
reg [7:0] I;
wire [2:0]Y;
encoder8to3 uut (I,Y);
always begin
#100 I[7:0]=8'b00000001;
#100 I[7:0]=8'b00000010;
#100 I[7:0]=8'b00000100;
#100 I[7:0]=8'b00001000;
#100 I[7:0]=8'b00010000;
#100 I[7:0]=8'b00100000;
#100 I[7:0]=8'b01000000;
#100 I[7:0]=8'b10000000;
end

endmodule

