//Escala de tiempo
`timescale 1ns/1ns

module TestBench();

	//Señales de prueba
	reg[16:0] data_in;
	wire [31:0] result;
	
	Jericalla Jericalla 
	(
		.instruction(data_in),
		.data_out(result)
	);
	
	//Inicializamos
	initial begin
		
		data_in = 17'b00000010010001111;
		#50;
		
		#10;
		$finish;
		
	end
	
endmodule