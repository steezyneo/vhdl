`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2024 16:57:40
// Design Name: 
// Module Name: comparator
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


module comparator (input [1:0] A, B, output A_less_B, A_equal_B, A_greater_B);
  wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;

  // A = B output  
  assign tmp1 = ~(A[1] ^ B[1]); 
  assign tmp2 = ~(A[0] ^ B[0]); 
  assign A_equal_B = tmp1 & tmp2;

  // A less than B output   
  assign tmp3 = (~A[1]) & B[1];    
  assign tmp4 = (~A[0]) & B[0];  
  assign A_less_B = tmp3 | (tmp1 & tmp4);

  // A greater than B output   
  assign tmp5 = A[1] & (~B[1]);  
  assign tmp6 = A[0] & (~B[0]);  
  assign A_greater_B = tmp5 | (tmp3 & tmp6);  

endmodule


