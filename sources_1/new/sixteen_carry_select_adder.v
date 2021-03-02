`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 10:43:57 AM
// Design Name: 
// Module Name: sixteen_bit_carry_select_adder
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


module sixteen_bit_carry_select_adder(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] S,
    output C
    );
    
    wire [15:0]  S0;
    wire [15:0]  S1;
    wire         C0;
    wire         C1;
    
    sixteen_bit_ripple_carry_adder rca0(A[15:0], B[15:0], 0, S0, C0);
    sixteen_bit_ripple_carry_adder rca1(A[15:0], B[15:0], 1, S1, C1);
    mux m0(S0[0], S1[0], Cin, S[0]);
    mux m1(S0[1], S1[1], Cin, S[1]);
    mux m2(S0[2], S1[2], Cin, S[2]);
    mux m3(S0[3], S1[3], Cin, S[3]);
    mux m4(S0[4], S1[4], Cin, S[4]);
    mux m5(S0[5], S1[5], Cin, S[5]);
    mux m6(S0[6], S1[6], Cin, S[6]);
    mux m7(S0[7], S1[7], Cin, S[7]);
    mux m8(S0[8], S1[8], Cin, S[8]);
    mux m9(S0[9], S1[9], Cin, S[9]);
    mux m10(S0[10], S1[10], Cin, S[10]);
    mux m11(S0[11], S1[11], Cin, S[11]);
    mux m12(S0[12], S1[12], Cin, S[12]);
    mux m13(S0[13], S1[13], Cin, S[13]);
    mux m14(S0[14], S1[14], Cin, S[14]);
    mux m15(S0[15], S1[15], Cin, S[15]);
    mux Cout(C0, C1, Cin, C);
        
endmodule
