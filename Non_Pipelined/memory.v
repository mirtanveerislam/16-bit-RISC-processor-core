/*************************************************************
* File Name   : memory.v
* Design Name : memory
* Version     : 
* Author      : 
* Date        : 
* Description : Memory block
* Change Log  : 
*************************************************************/

module memory #(
    parameter mem_size = 32
)  (
    //----- inputs -----
    input  wire        clk,
    input  wire [15:0] address,
    input  wire [15:0] wdata,
    input  wire        wr,
        
    //----- outputs -----
    output wire [15:0] rdata
);
    
    //----- internal signals -----
    reg [15:0] mem [mem_size-1:0];

    //----- assign outputs -----
    assign rdata = mem[address];

    //----- Memory Write Block -----
    always @ (posedge clk) begin
        if (wr) begin
            mem[address] = wdata;
        end
    end
    
endmodule
