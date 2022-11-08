`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/07/2022 10:03:12 PM
// Design Name: 2x1 Multiplexer (Dataflow)
// Module Name: mux_2x1_dataflow
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


module mux_2x1_dataflow(
    // provide the module with an input and output
    input x1, x2, s,
    output f
    );
    /* If anything will change right of the equal sign
    we must set this to assign */
    assign f = ~s & x1 | s & x2; 
endmodule
