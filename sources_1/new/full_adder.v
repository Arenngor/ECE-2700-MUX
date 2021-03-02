`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2019 08:39:14 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    
    xor(w1, A, B);
    xor(S, Cin, w1);
    and(w2, A, B);
    and(w3, A, Cin);
    and(w4, B, Cin);
    or(Cout, w2, w3, w4);
    
endmodule
