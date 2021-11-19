`timescale 1 ns / 1 ps

module test;
    logic clk =0;
    logic state_reset = 1;


   always #5 clk=~clk;

    logic               read;
    //Analog signals
    
    logic               ADC_finished;
    logic [3:0]         read_reg;
    logic               expose_enable;
    logic               expose_finished;
    logic               convert;
    logic               frame_reset;
    logic               ADC_reset;
    // During expoure, provide a clock via anaBias1.
    // Again, no resemblence to real world, but we cheat.
    //Move to exposeDuration
    //Connections for pixel memory, digital ramp and read of memory.
    tri[7:0]            pixData1;
    tri[7:0]            pixData2; 

   
    //Instanciate the pixel array

  pixelState p1(
                    .clk(clk),
                    .state_reset(state_reset),
                    .read_reg(read_reg),//sends read_finished into state machine. This could be replaced.
                    .expose_finished(expose_finished),
                    .ADC_finished(ADC_finished),

                    .read(read),
                    .expose_enable(expose_enable),
                    .convert(convert),
                    .frame_reset(frame_reset),
                    .ADC_reset(ADC_reset)
                    );

  initial begin
       $dumpfile("pixelState.vcd");
       $dumpvars(0,test);
      
      #10 state_reset = 0; 
      #10 expose_finished =0;
     // #clk_period state_reset = 0;

      #20 expose_finished = 1;
       read_reg = 4'b0001;


      #10 ADC_finished = 1;
   
       #500
      //#10 expose_finished =0;
      //#10 read_finished =0;
      
       //#20 expose_finished = 1;
       //#20 read_finished = 1;

        $stop;

    end
endmodule // test
