`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/13/2022 02:12:16 PM
// Design Name: Full Adder
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
    input x, y, c_in,
    output s, c_out
    );
    
    // since the half adder is already created in the same project folder,
    // we can create an instance of it in this circuit so we don't have to
    // recreate all of the logic
    half_adder HA0( // instantiating the first half adder in the circuit
        .x(x), // utilizing name-part connections
        .y(y),
        .c(c1),
        .s(s1)
    );
    
    half_adder HA1( // instantiating the second half adder in the circuit
        .x(c_in),
        .y(s1),
        .c(c2),
        .s(s)
    );
    
    assign c_out = c1 | c2;
    
endmodule
