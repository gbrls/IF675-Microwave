encoder:
	iverilog hdl/encoder/*.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder
timer:
	iverilog hdl/timer/*.v test/timer_tb.v -o bin/timer
	vvp bin/timer