`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/25/2022 02:01:46 PM
// Design Name: 
// Module Name: multi_adders
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A couple of instances of the ripple carry adders
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_adders(
    input [15:0] a, b,
    output [15:0] s_ab,
    output c_out_ab,
    input [33:0] x, y,
    output [33:0] s_xy,
    output c_out_xy
    );
    
    rca_nbit #(.n(16)) adder_16 ( // instantiating a 16 adder using the parameterized n_bit adder
        .x(a),
        .y(b),
        .c_in(0),
        .s(s_ab),
        .c_out(c_out_ab)
   );
   
   rca_nbit #(.n(34)) adder_34 ( // instantiating a 34 adder using the parameterized n_bit adder
        .x(x),
        .y(y),
        .c_in(0),
        .s(s_xy),
        .c_out(c_out_xy)
   );    
endmodule
