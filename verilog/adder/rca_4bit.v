`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/13/2022 02:27:13 PM
// Design Name: Ripple-Carry Adder
// Module Name: rca_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Adds four bit binary values
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: This is not the best version of this circuit;
// however, this is only a demonstration to show modularity
// 
//////////////////////////////////////////////////////////////////////////////////


module rca_4bit(
    input [3:0] x, y, // = x0, x1, x2, x3, & y0, y1, y2, y3
    input c_in,
    output [3:0] s, // = s0, s1, s2, s3
    output c_out
    );
    
    wire [3:1] c; // connecting the carry in between adders
    
    full_adder FA0( // instantiating a full adder module
        .x(x[0]),
        .y(y[0]),
        .c_in(c_in),
        .s(s[0]),
        .c_out(c[1])
    );
    
    full_adder FA1( 
        .x(x[1]),
        .y(y[1]),
        .c_in(c[1]),
        .s(s[1]),
        .c_out(c[2])
    );
    
    full_adder FA2( 
        .x(x[2]),
        .y(y[2]),
        .c_in(c[2]),
        .s(s[2]),
        .c_out(c[3])
    );
    
    full_adder FA3( 
        .x(x[3]),
        .y(y[3]),
        .c_in(c[3]),
        .s(s[3]),
        .c_out(c_out)
    );
endmodule
