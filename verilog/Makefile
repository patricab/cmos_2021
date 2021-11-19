
run_ADC:
	iverilog  -g2012 -o my_design -c ADCHandler.fl
	vvp -n my_design

run_state:
	iverilog  -g2012 -o my_design -c pixelState.fl
	vvp -n my_design

run_shift:
	iverilog  -g2012 -o my_design -c shiftReg.fl
	vvp -n my_design

run_memory:
	iverilog  -g2012 -o my_design -c memoryHandler.fl
	vvp -n my_design

run_expose:
	iverilog  -g2012 -o my_design -c exposeDuration.fl
	vvp -n my_design

run_TOP:
	iverilog  -g2012 -o my_design -c pixelTOP.fl
	vvp -n my_design


run_netlist_ADC:
	iverilog  -g2012 -o my_design_netlist -c ADCHandler_netlist.fl
	vvp -n my_design_netlist

synth_ADC:
	yosys ADCHandler.ys

synth_expose:
	yosys exposeDuration.ys

synth_memory:
	yosys memoryHandler.ys

synth_state:
	yosys pixelState.ys

synth_netlist:
	yosys ADCHandler_netlist.ys



spng: synth_netlist
	dot counter.dot -Tpng > counter.png

sp:
	echo "\n\n.SUBCKT counter out_7 out_6 out_5 out_4 out_3 out_2 out_1 out_0 clk reset AVDD AVSS" > counter_netlist_pg.spi
	cat counter_netlist.sp |perl -pe 's/ (\w+_CV)/ AVDD AVSS $$1/ig;s/(\w)\./$$1_/ig' >> counter_netlist_pg.spi
	echo ".ENDS" >> counter_netlist_pg.spi


spsim:
	ngspice -a counter_tb.cir

spattack:
	-ngspice -a -b counter_attack_tb.cir
	ps2pdf counter_ref_do.ps
	ps2pdf counter_ref_dor.ps
	ps2pdf counter_ref_wave.ps

test: run synth run_netlist synth_netlist sp
