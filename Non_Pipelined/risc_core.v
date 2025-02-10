/*************************************************************
* File Name   : risc_core.v
* Design Name : risc_core
* Version     : 
* Author      : 
* Date        : 
* Description : RISC core module
* Change Log  : 
*************************************************************/

module risc_core_np #(
    parameter imem_size = 32
) (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [15:0] imem_rdata,
    input  wire [15:0] dmem_rdata,
    
    //----- outputs -----
    output wire [15:0] imem_addr,
    output wire [15:0] dmem_addr,
    output wire [15:0] dmem_wdata,
    output wire        dmem_wr,
    output wire        holt 
);

    //----- internal signals -----
    wire       pc_inc;
    wire       pc_sel;
    wire       pc_load;
    wire       pc_rst_n;
    wire       ir_wr;
    wire       rf_wr_sel;
    wire       rf_wr;
    wire [3:0] opcode;
    wire       rs_less_zero;

    //----- Control Unit -----
    control_unit #(
        .imem_size ( imem_size )
    ) CU (
        //----- inputs -----
        .clk          ( clk ),
        .rst_n        ( rst_n ),
        .opcode       ( opcode ),
        .rs_less_zero ( rs_less_zero ),
        .pc_val       ( imem_addr ),
        
        //----- outputs -----
        .pc_inc      ( pc_inc ),
        .pc_sel      ( pc_sel ),
        .pc_load     ( pc_load ),
        .pc_rst_n    ( pc_rst_n ),
        .ir_wr       ( ir_wr ),
        .rf_wr_sel   ( rf_wr_sel ),
        .rf_wr       ( rf_wr ),
        .dmem_wr     ( dmem_wr ),
        .holt        ( holt ) 
    );
    
    //----- Data Unit -----
    datapath DU (
        //----- inputs -----
        .clk         ( clk ),
        .rst_n       ( rst_n ),
        .pc_inc      ( pc_inc ),
        .pc_sel      ( pc_sel ),
        .pc_load     ( pc_load ),
        .pc_rst_n    ( pc_rst_n ),
        .ir_wr       ( ir_wr ),
        .rf_wr_sel   ( rf_wr_sel ),
        .rf_wr       ( rf_wr ),
        .imem_rdata  ( imem_rdata ),
        .dmem_rdata  ( dmem_rdata ),
        
        //----- outputs -----
        .opcode       ( opcode ),
        .rs_less_zero ( rs_less_zero ),
        .imem_addr    ( imem_addr ),
        .dmem_addr    ( dmem_addr ),
        .dmem_wdata   ( dmem_wdata ) 
    );
    
endmodule
