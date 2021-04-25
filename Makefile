encoder:
	iverilog hdl/encoder/*.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder