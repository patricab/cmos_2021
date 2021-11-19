`timescale 1 ns / 1 ps

module test;
  logic reset = 0;
  logic clk = 0;
  logic     analog_ramp;
  logic     ADC_finished;
  logic     enable;
  always #5 clk = !clk;

  logic [7:0] count;
  ADCHandler c1 ( 
                .enable(enable), 
                .clk(clk), 
                .reset(reset), 
                .analog_ramp(analog_ramp), 
                .ADC_finished(ADC_finished),
                .out(count)
                );

  initial
    begin
       $dumpfile("ADCHandler.vcd");
       $dumpvars(0,test);

      #10 reset = 1; 
      #10 reset = 0;

      #20 enable = 1;

       #2600
       $stop;

    end
endmodule // test
