`timescale 1 ns / 1 ps

module test;
    logic clk =0;
    logic frame_reset = 0;

    logic [5:0]exposeCycles_pixel = 5;
    logic expose_enable = 0;
    logic expose_finished;
    logic expose;


   always #5 clk=~clk;
   
    //Instanciate the pixel array

    exposeDuration e1 (
                     .exposecycles(exposeCycles_pixel), 
                     .clk(clk), 
                     .reset(frame_reset), 
                     .expose_enable(expose_enable), 
                     .expose_finished(expose_finished),
                     .expose(expose)
                     );

  initial begin
       $dumpfile("exposeDuration.vcd");
       $dumpvars(0,test);
      #10 frame_reset = 1;
      #5 frame_reset = 0;
      #5 expose_enable = 1;

        #50

       #100
        $stop;

    end
endmodule // test
