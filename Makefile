encoder:
	iverilog hdl/encoder/encoder.v hdl/encoder/div100.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder