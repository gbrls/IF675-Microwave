encoder:
	iverilog hdl/encoder/*.v test/encoder_tb.v -o bin/encoder
	vvp bin/encoder

timer:
	iverilog hdl/timer/*.v test/timer_tb.v -o bin/timer
	vvp bin/timer

control:
	iverilog hdl/control/*.v test/control_tb.v -o bin/control
	vvp bin/control

decoder:
	iverilog hdl/decoder/*.v test/decoder_tb.v -o bin/decoder
	vvp bin/decoder
