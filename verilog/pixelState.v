module pixelState(
    input logic         clk,
    input logic         state_reset,
    input logic [3:0]   read_reg,
    input logic         expose_finished,
    input logic         ADC_finished,

    output logic        read,
    output logic        expose_enable,
    output logic        convert,
    output logic        frame_reset,
    output logic        ADC_reset

);


  
    logic               read_finished;
    logic [5:0]         exposeCycles_pixel = 10; //Set by user/test bench. dictates expose duration.
    logic [2:0]         state,next_state;   //States
   
    //------------------------------------------------------------
    // State Machine
    //------------------------------------------------------------
    parameter FRAMERESET=0, EXPOSE_READ=1, CONVERT=2, ADCRESET=3, IDLE=4;

    // Control the output signals
    always_ff @(negedge clk ) begin
      case(state)
        FRAMERESET: begin
          // erase <= 1;
           read <= 0;
           expose_enable <= 0;
           convert <= 0;
           frame_reset <= 1;
           ADC_reset <=0;
           read_finished <=0;
        end
        EXPOSE_READ: begin
          // erase <= 0;
           read <= 1;
           expose_enable <= 1;
           convert <= 0;
           frame_reset <= 0;
           ADC_reset <=0;
        end
        ADCRESET: begin
          // erase <= 0;
           read <= 0;
           expose_enable <= 0;
           convert <= 0;
           frame_reset <= 0;
           ADC_reset <=1;
        end 
        CONVERT: begin
        //   erase <= 0;
           read <= 0;
           expose_enable <= 0;
           convert = 1;
           frame_reset <= 0;
           ADC_reset <=0;
        end
        IDLE: begin
           //erase <= 0;
           read <= 0;
           expose_enable <= 0;
           convert <= 0;
           frame_reset <= 0;
           ADC_reset <=0;

        end
 
      endcase // case (state)
   end // always @ (state)


   // Control the state transitions.

   always_ff @(posedge clk) begin 
      if(state_reset) begin  
         next_state = FRAMERESET;
         convert  = 0;
         state = IDLE;
      end
      else begin
         case (state)
           FRAMERESET: begin
                 next_state <= EXPOSE_READ;
                 state <= IDLE;
           end
           EXPOSE_READ: begin
              if (read_reg[0]) begin //fiks at denne bruker riktig bit.
                 read_finished <=1;
              end
              if(read_finished && expose_finished) begin //Fix these variables
                 next_state <= ADCRESET;
                 state <= IDLE;
              end
           end
           ADCRESET: begin
                 next_state <= CONVERT;
                 state <= IDLE;
           end
           CONVERT: begin
              if(ADC_finished) begin
                 next_state <= FRAMERESET;
                 state <= IDLE;
              end
           end
           IDLE: begin
             state <= next_state;
           end

         endcase // case (state)
         
      end
   end // always @ (posedge clk or posedge reset)
endmodule