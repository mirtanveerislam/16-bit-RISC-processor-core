/*************************************************************
* File Name   : regfile.v
* Design Name : regfile
* Version     : 
* Author      : 
* Date        : 
* Description : Register File which contains 16 Register of 16 bits each
* Change Log  : 
*************************************************************/

module regfile (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  rs1,
    input  wire [3:0]  rs2,
    input  wire [3:0]  rd,
    input  wire [3:0]  blz_rs1,
    input  wire        rf_wr,
    input  wire [15:0] rf_wdata,
    
    //----- outputs -----
    output wire [15:0] rs1_data,
    output wire [15:0] rs2_data,
    output wire        rs_less_zero
);
    
    //----- internal signals -----
    reg  [15:0] registers [15:0];
    
    //----- assign outputs -----
    assign rs1_data     = registers[rs1];
    assign rs2_data     = registers[rs2];
    assign rs_less_zero = registers[blz_rs1][15];

    //----- write to regfile -----
    always @ (posedge clk) begin
        if(rf_wr) begin
            registers[rd] <= rf_wdata;
        end
    end

//    assign rd_data = registers[blz_rs1];
    
endmodule
