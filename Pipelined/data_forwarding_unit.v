/*************************************************************
* File Name   : data_forwarding_unit.v
* Design Name : data_forwarding_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Data Forwarding Unit
* Change Log  : 
*************************************************************/

module data_forwarding_unit (
    //----- inputs -----
    input  wire       clk,
    input  wire       rst_n,
    input  wire [3:0] id_rs1,
    input  wire [3:0] id_rs2,
    input  wire [3:0] ex_rd,
    input  wire [3:0] wb_rd,
    input  wire [3:0] if_rd,

    //----- outputs -----
    output wire id_rs1_eq_ex_rd,
    output wire id_rs1_eq_wb_rd,
    output wire id_rs2_eq_ex_rd,
    output wire id_rs2_eq_wb_rd,
    output wire if_rd_eq_wb_rd 
);

    //----- internal signals -----

    //----- assign outputs -----
    assign id_rs1_eq_ex_rd = (id_rs1 == ex_rd);
    assign id_rs1_eq_wb_rd = (id_rs1 == wb_rd);
    assign id_rs2_eq_ex_rd = (id_rs2 == ex_rd);
    assign id_rs2_eq_wb_rd = (id_rs2 == wb_rd);
    assign if_rd_eq_wb_rd  = (if_rd == wb_rd); 

endmodule
