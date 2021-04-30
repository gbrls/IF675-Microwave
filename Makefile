encoder:
	iverilog hdl/encoder/*.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder

control:
	iverilog hdl/control/*.v test/control_tb.v -o bin/control
	vvp bin/control