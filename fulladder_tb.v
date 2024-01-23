`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2024 21:02:06
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb(    );
reg a,b,cin;
wire sum,cout;
fulladder uut (a,b,cin,sum,cout);
initial begin
#100 a=0;b=0;cin=0;
#100 a=0;b=0;cin=1;
#100 a=0;b=1;cin=0;
#100 a=0;b=1;cin=1;
#100 a=1;b=0;cin=0;
#100 a=1;b=0;cin=1;
#100 a=1;b=1;cin=0;
#100 a=1;b=1;cin=1;
end
endmodule
