`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:45 12/25/2015 
// Design Name: 
// Module Name:    e6s4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module e6s4(
    output reg[1:0] Dout,
    input [1:0] address,
	 input Din, 
    input WR,
    input clk
);
    reg [1:0] memory [0:3];

    always @(posedge clk) begin
        if (WR) begin
            memory[address] <= Din;
        end
		  Dout <= memory[address];
	 end

endmodule
