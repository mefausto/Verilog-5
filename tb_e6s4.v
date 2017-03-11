`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:10 12/25/2015
// Design Name:   e6s4
// Module Name:   C:/Workspace/e6s4/tb_e6s4.v
// Project Name:  e6s4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: e6s4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_e6s4;

	// Inputs
	reg [1:0] address;
	reg Din;
	reg WR;
	reg clk;

	// Outputs
	wire [1:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	e6s4 uut (
		.Dout(Dout), 
		.address(address), 
		.Din(Din), 
		.WR(WR), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		$monitor("address = %b Data in = %b Data out = %b Write = %b", address, Din, Dout, WR);
		address = 00;
		Din = 0;
		WR = 1;
		clk = 1;
		
		#10 	Din=1;address=01; 
		#10		Din=0;address=10;
		#10		Din=1;address=11;
		#10 	WR=0;
		#10 	address=00;
		#10		address=01;
		#10 	address=10;
		#10     address=11;
	end
	always begin
		#5 clk=~clk;
	end	
endmodule

