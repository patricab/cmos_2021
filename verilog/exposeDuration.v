module exposeDuration(
    input logic [5:0] exposecycles,
    input logic clk, 
    input logic reset,//see whether exposure should be a time rater than cycle signal. 
    input logic expose_enable, 
    output logic expose_finished,
    output  logic   expose
);


    logic [5:0] count = 0;
    
    //logic    expose_finished_in;
    //logic      expose_enable_in;
    assign anaBias1 = expose ? clk : 0;//mulig denne må i TOP

    always @(posedge clk) begin
    
        if(reset) begin
            count <= 0;
            expose<=1;//check if this stores the value or something must be done to keep it.
            expose_finished <= 0;

            //expose_enable <= expose_enable_in;
            //expose_finished <= expose_finished_in;
        end 
        else if(count==exposecycles)begin
            expose <=0;
            expose_finished <= 1;   
            //expose_enable <= expose_enable_in;
            //expose_finished <= expose_finished_in;
        end 
        else if (count <exposecycles && expose_enable) begin
            count <= count+1;
            expose <=1;
            expose_finished <= 0;
            //expose_enable <= expose_enable_in;
            //expose_finished <= expose_finished_in;
        end


        //See if the counter itself must be stopped or enabled here. 
    end
endmodule // counter
