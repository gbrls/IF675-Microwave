encoder:
	iverilog hdl/encoder/encoder.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder