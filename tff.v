`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:22:41
// Design Name: 
// Module Name: tff
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


module tff(
  input t,
  input clk,
  input reset,
  output reg q);
  always @ (posedge clk)
  if (reset)
    q<=0;
  else
    begin
      case(t)
        1'b0: q<=q;
        1'b1: q<=~q;
        endcase
    end
    endmodule


