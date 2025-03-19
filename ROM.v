`timescale 1ns/1ps
module ROM
(
	input wire [3:0] address01,
	input wire [3:0] address02,
	output reg[31:0] data_01,
	output reg[31:0] data_02
);

reg [31:0] rom [0:15];

initial
	begin
		#100;
		$readmemb ("datosROM.txt", rom);
	end
	
always @* 
	begin
        data_01 = rom[address01];
        data_02 = rom[address02];
    end

endmodule
