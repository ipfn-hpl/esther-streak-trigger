`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2020 05:33:44 PM
// Design Name: 
// Module Name: mux3
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


module mux3(
input [1:0] sel, 
input a,
input b,
input c,
output reg out

    );
    
    always @(sel or a or b or c)begin
    case (sel)
    2'b00: out=a;
    2'b01: out=b;
    2'b10: out=c;
    endcase
    
    end
endmodule
