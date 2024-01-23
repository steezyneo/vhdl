`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 20:57:14
// Design Name: 
// Module Name: decoder3to8_tb
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


module decoder3to8_tb(    );
reg [2:0]I;
wire [7:0]Y;
decoder3to8 uut (I,Y);
always begin
#100 I[2:0]=3'b000; 
#100 I[2:0]=3'b001;
#100 I[2:0]=3'b010;
#100 I[2:0]=3'b011;
#100 I[2:0]=3'b100;
#100 I[2:0]=3'b101;
#100 I[2:0]=3'b110;
#100 I[2:0]=3'b111;
end
endmodule
