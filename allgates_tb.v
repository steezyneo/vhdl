`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:06:10
// Design Name: 
// Module Name: allgates_tb
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


module allgates_tb(    );
reg a,b;
wire p,q,r,s,t,u,v;

allgates uut (a,b,p,q,r,s,t,u,v);

initial begin
#100 a=0; b=0;
#100 a=1; b=0;
#100 a=0; b=1;
#100 a=1; b=1;
end
endmodule
