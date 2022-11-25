`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/13/2022 03:42:15 PM
// Design Name: n-bit Ripple-Carry Adder
// Module Name: rca_nbit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Paramterized n_bit adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rca_nbit
    #(parameter n = 4) // parameterized circuit with a default value of 4
    (
    input [n-1: 0] x, y, // this will set the bit width of the inputs x and y based on the parameter
    input c_in,
    output [n-1: 0] s, // this will set the bit width of the output sum based on the parameter
    output c_out
    );
    
    wire [n: 0] c; // all of the different carries for all of the signals
    
    assign c[0] = c_in; // the first carry in signal will always be c_in
    
    assign c_out = c[n];
    
    // need to instantiate (n) number of the full adders
    generate // this block is used for replicated hardware structures
        // we want to instantiate n of the full adders
        genvar k; // generate variable which is an integer that can not take negative values
        for (k = 0; k < n; k = k + 1) // what this for loop will do is connect n full adders in sequence in a way where it will represent a ripple carry adder 
        begin: stage // gives a name for each iteration of the for loop block
            full_adder FA (
                .x(x[k]),
                .y(y[k]),
                .c_in(c[k]),
                .s(s[k]),
                .c_out(c[k + 1])
            );
        end
    endgenerate
endmodule
