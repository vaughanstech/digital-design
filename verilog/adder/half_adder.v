`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VaughansTech
// Engineer: Michael Vaughan
// 
// Create Date: 11/13/2022 02:05:32 PM
// Design Name: Half Adder
// Module Name: half_adder
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


module half_adder(
    input x, y,
    output c, s
    );
    
    assign s = x ^ y; // SUM logic X XOR Y
    assign c = x & y; // CARRY logic X AND Y
endmodule
