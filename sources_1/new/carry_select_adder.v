`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 09:22:10 AM
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(
    output [3:0] S,
    output C,
    input [3:0] A,
    input [3:0] B,
    input       Cin
    );
    
    wire [3:0]  S0;
    wire [3:0]  S1;
    wire        C0;
    wire        C1;
    
    ripple_carry_adder rca_in0(A[3:0], B[3:0], 0, S0, C0);
    ripple_carry_adder rca_in1(A[3:0], B[3:0], 1, S1, C1);
    mux m0(S0[0], S1[0], Cin, S[0]);
    mux m1(S0[1], S1[1], Cin, S[1]);
    mux m2(S0[2], S1[2], Cin, S[2]); 
    mux m3(S0[3], S1[3], Cin, S[3]);
    mux mCout(C0, C1, Cin, C);  
endmodule
