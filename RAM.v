`timescale 1ns/1ps
module RAM
(
	input wire [3:0] address,
	input wire [31:0] data_in,
	input write_enable,
	output [31:0] data_out
);

reg [31:0] mem [0:15];

initial
	begin
		#100;
		$readmemb ("datosRAM.txt", mem);
	end
	
always @*
begin 
	if(write_enable == 1)
		begin
			mem[address] = data_in;
		end
	else
		begin
			mem[address] = data_out;
		end
end

endmodule
