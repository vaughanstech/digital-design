`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/07/2022 11:03:52 PM
// Design Name: 
// Module Name: mux_2x1_beh
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


module mux_2x1_beh(
    input x1,
    input x2,
    input s,
    output reg f // we have to use the word reg keyword since we have an always block
                // where the output will change
    );
    
    // need to create an always block
    always @(x1, x2, s) // whatever behaviour you are trying to describe will live in this block
    begin
        if (s)
        begin // think of BEGIN and END syntax as brackets from programming languages
           f = x2; 
        end
        else // you can also say else if
        begin
            f = x1;
        end 
    end
    
    /*
    case(s)
        1: f = x2;
        0: f = x1;
    endcase
    */
endmodule
