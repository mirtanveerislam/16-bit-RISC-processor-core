/*************************************************************
* File Name   : ex_wb_pl_reg.v
* Design Name : ex_wb_pl_reg
* Version     : 
* Author      : 
* Date        : 
* Description : Pipeline register between EX and WB stages
* Change Log  : 
*************************************************************/

module ex_wb_pl_reg (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  ex_opcode,
    input  wire [3:0]  ex_rd,
    input  wire [15:0] ex_exu_data,
    input  wire        ex_rf_wr,
    input  wire        ex_rf_wr_sel,

    //----- outputs -----
    output wire [3:0]  opcode_wb,
    output wire [3:0]  rd_wb,
    output wire [15:0] exu_data_wb,
    output wire        rf_wr_wb,
    output wire        rf_wr_sel_wb 
);

    //----- internal signals -----
    reg  [25:0] ex_wb_reg;
    
    //----- assign outputs -----
    assign opcode_wb    = ex_wb_reg[3:0];
    assign rd_wb        = ex_wb_reg[7:4];
    assign exu_data_wb  = ex_wb_reg[23:8];
    assign rf_wr_wb     = ex_wb_reg[24];
    assign rf_wr_sel_wb = ex_wb_reg[25];

    //----- Register -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            ex_wb_reg <= 24'b0;
        end
        else begin
            ex_wb_reg [3:0] <= ex_opcode;
            ex_wb_reg [7:4] <= ex_rd;
            ex_wb_reg[23:8] <= ex_exu_data;
            ex_wb_reg[24]   <= ex_rf_wr;
            ex_wb_reg[25]   <= ex_rf_wr_sel;
        end
    end
endmodule
