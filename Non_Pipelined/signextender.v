/*************************************************************
* File Name   : signextender.v
* Design Name : signextender
* Version     : 
* Author      : 
* Date        : 
* Description : Sign extension for immidiate-offset values
* Change Log  : 
*************************************************************/

module signextender (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  in_8b,
    
    //----- outputs -----
    output wire [15:0] out_16b
);
    
    //----- internal Signals -----
    reg [15:0] sign_extended;

    //----- assign outputs -----
    assign out_16b = sign_extended;

    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            sign_extended <= 16'b0;
        end
        else begin
            sign_extended <= { {8{in_8b[7]}}, in_8b[7:0] };
        end
    end

endmodule
