`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 10:16:51 AM
// Design Name: 
// Module Name: 16bit_ripple_carry_adder
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


module sixteen_bit_ripple_carry_adder(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] S,
    output C
    );
    
     wire C0;
     wire C1;
     wire C2;
     
     ripple_carry_adder rca0(A[3:0], B[3:0], Cin, S[3:0], C0);
     ripple_carry_adder rca1(A[7:4], B[7:4], C0, S[7:4], C1);
     ripple_carry_adder rca2(A[11:8], B[11:8], C1, S[11:8], C2);
     ripple_carry_adder rca3(A[15:12], B[15:12], C2, S[15:12], C);
     
endmodule
