module pixelTOP (
    input logic             clk,
    input logic             state_reset,
    input logic [5:0]       exposeCycles_pixel,

    output logic [7:0]      pixelDataOut1,
    output logic [7:0]      pixelDataOut2
                );



    logic               expose; //connects exposeDuration & pixel expose
    logic               read;
    //Analog signals
    logic               anaBias1; //pixel clock
    logic               anaRamp; //tie in pixel and ADC

    logic               ADC_finished;
    logic               expose_finished;
    logic [3:0]         read_reg;
    logic               expose_enable;
    logic               convert;
    logic               frame_reset;
    logic               ADC_reset;
    // During expoure, provide a clock via anaBias1.
    // Again, no resemblence to real world, but we cheat.
    //Move to exposeDuration
    assign anaBias1 = expose ? clk : 0;

    //Connections for pixel memory, digital ramp and read of memory.
    tri[7:0]            pixData1;
    tri[7:0]            pixData2; 

    // If we're not reading the pixData, then we should drive the bus
    assign pixData1 = read ? 8'bZ: data;
    assign pixData2 = read ? 8'bZ: data;

    //Instanciate the pixel array
    pixelArray                            pa1(
                                            .bias_clk(anaBias1), 
                                            .ramp_clk(anaRamp), 
                                            .mem_reset(ADC_reset), 
                                            .pixel_erase(frame_reset), 
                                            .pixel_expose(expose), 
                                            .mem_read(read_reg[3:2]),
                                            .pixData1(pixData1),
                                            .pixData2(pixData2)
                                            );


    //------------------------------------------------------------
    // DAC and ADC model
    //------------------------------------------------------------
    logic[7:0] data;

    // If we are to convert, then provide a clock via anaRamp
    // This does not model the real world behavior, as anaRamp would be a voltage from the ADC
    // however, we cheat
    //assign anaRamp = convert ? clk : 0;//bruk denne i adchandler

    exposeDuration e1 (
                     .exposecycles(exposeCycles_pixel), 
                     .clk(clk), 
                     .reset(frame_reset), 
                     .expose_enable(expose_enable), 
                     .expose_finished(expose_finished),
                     .expose(expose)
                     );

 

    ADCHandler a1 (
                  .out(data), 
                  .analog_ramp(anaRamp), 
                  .clk(clk), 
                  .reset(ADC_reset), 
                  .enable(convert),
                  .ADC_finished(ADC_finished)
                );

//Legg til memory handler
    memoryHandler m1(
                .clk(clk),
                .frame_reset(frame_reset),
                .read(read),
                .pixData1(pixData1),
                .pixData2(pixData2),

                .pixelDataOut1(pixelDataOut1),
                .pixelDataOut2(pixelDataOut2),
                .read_select(read_reg)

);

//Legg til state machine
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

endmodule