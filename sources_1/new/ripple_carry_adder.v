`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2019 08:44:23 AM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output C
    );
    
    wire C0;
    wire C1;
    wire C2;
    
    full_adder fa0(A[0],B[0], Cin, S[0], C0);
    full_adder fa1(A[1],B[1], C0, S[1], C1);
    full_adder fa2(A[2],B[2], C1, S[2], C2);
    full_adder fa3(A[3],B[3], C2, S[3], C);
    
endmodule
