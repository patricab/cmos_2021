module ADCHandler(

   input logic     enable,
   input logic     reset, 
   input logic     clk,

   output logic     analog_ramp, 
   output logic     ADC_finished,
   output logic   [7:0]  out 
);
    logic   [7:0]  digital_ramp = 0;

    always @(posedge clk) begin
         if(enable && digital_ramp<255) begin
            analog_ramp <= clk;
            digital_ramp <=digital_ramp+1;
            out <= digital_ramp;
            ADC_finished <=0;
         end
            
        //    ADC_finished <= 0;//Må denne gjentas hver klokkesyklus?
        if(reset) begin
            digital_ramp <= 0;
            analog_ramp <=0;
            ADC_finished <=0;
        end
        else if(digital_ramp == 255) begin
            ADC_finished <=1;
            analog_ramp <=0;
            //Digital ramp stays at 255 as this allows read during next frame
         end

    end
    always @(negedge clk) begin
        if(enable && digital_ramp<255) begin
            analog_ramp <= clk;
            ADC_finished <=0;
         end
    end
       
    //simply listen for expose finishing and read finishing
    //Then initiate ramp and send apropriate signals to pixel circuit. 
    //otherwise keep ramp value high. this should be don ein ramp module. 

endmodule 

