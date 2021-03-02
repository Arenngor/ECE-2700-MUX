`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2019 07:34:02 AM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [15:0]   A;
    reg [15:0]   B;
    reg         Cin;
    wire [15:0]  S;
    wire        C;

sixteen_bit_carry_select_adder DUT(
//sixteen_bit_ripple_carry_adder DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .C(C)

    );


integer i;
initial begin
        A = 0;
        B = 0;
        Cin = 0;
        
        for(i = 0; i < 500000; i = i+1)
    begin
        {A, B, Cin} = i;
        #1;
        end

    end
endmodule
