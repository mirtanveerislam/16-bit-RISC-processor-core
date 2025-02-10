/*************************************************************
* File Name   : datapath.v
* Design Name : datapath
* Version     : 
* Author      : 
* Date        : 
* Description : 
* Change Log  : 
*************************************************************/

module datapath (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire        pc_inc,
    input  wire        pc_sel,
    input  wire        pc_load,
    input  wire        pc_rst_n,
    input  wire        ir_wr,
    input  wire        rf_wr_sel,
    input  wire        rf_wr,
    input  wire [15:0] imem_rdata,
    input  wire [15:0] dmem_rdata,
    
    //----- outputs -----
    output wire [3:0]  opcode,
    output wire        rs_less_zero,
    output wire [15:0] imem_addr,
    output wire [15:0] dmem_addr,
    output wire [15:0] dmem_wdata 
);

    //----- internal signals -----
    wire [3:0]  rd;
    wire [3:0]  rs1;
    wire [3:0]  rs2;
    wire [7:0]  imm_off;
    wire [15:0] extd_imm_off;
    wire        load_op;
    wire [2:0]  alu_ctrl;
    wire [15:0] alu_rs1_data;
    wire [15:0] alu_rs2_data;
    wire [15:0] exu_data;
    wire [15:0] rf_wdata;
    wire [15:0] rs1_data;
    wire [15:0] rs2_data;
    
    //----- assign outputs -----
    assign dmem_addr  = alu_rs1_data;
    assign dmem_wdata = alu_rs2_data;
    

    //----- Instruction Fetch Unit -----
    inst_fetch_unit IFU (
        //----- inputs -----
        .clk       ( clk ),
        .rst_n     ( rst_n ),
        .pc_inc    ( pc_inc ),
        .pc_sel    ( pc_sel ),
        .pc_load   ( pc_load ),
        .pc_rst_n  ( pc_rst_n ),
        .pc_offset ( extd_imm_off ),
        .rs1_2_pc  ( alu_rs1_data ),
        .i_rdata   ( imem_rdata ),
        .ir_wr     ( ir_wr ),
    
        //----- outputs -----
        .pc_imem_radd ( imem_addr ),
        .opcode       ( opcode ),
        .rd           ( rd ),
        .rs1          ( rs1 ),
        .rs2          ( rs2 ),
        .imm_off      ( imm_off ) 
    );

    //----- Instruction Decode Unit -----
    inst_decode_unit IDU (
        //----- inputs -----
        .clk           ( clk ),
        .rst_n         ( rst_n ),
        .imm_off       ( imm_off ),
        .rs1_rdata     ( rs1_data ),
        .rs2_rdata     ( rs2_data ),
    
        //----- outputs -----
        .extd_imm_off ( extd_imm_off ),
        .alu_rs1_data ( alu_rs1_data ),
        .alu_rs2_data ( alu_rs2_data ) 
    );

    //----- Execution Unit -----
    assign load_op  = opcode[3];
    assign alu_ctrl = opcode[2:0];
    exec_unit EXU (
        //----- inputs -----
        .clk       ( clk ),
        .rst_n     ( rst_n ),
        .alu_ctrl  ( alu_ctrl ),
        .alu_data1 ( alu_rs1_data ),
        .alu_data2 ( alu_rs2_data ),
        .imm_val   ( extd_imm_off ),
        .mem_data  ( dmem_rdata ),
        .load_op   ( load_op ),
    
        //----- outputs -----
        .exu_data ( exu_data ) 
    );

    assign rf_wdata = (rf_wr_sel) ? imem_addr : exu_data;
    
    //----- Register File -----
    regfile RF (
        //----- inputs -----
        .clk         ( clk ),
        .rst_n       ( rst_n ),
        .rs1         ( rs1 ),
        .rs2         ( rs2 ),
        .rd          ( rd ),
        .rf_wr       ( rf_wr ),
        .rf_wdata    ( rf_wdata ),
        
        //----- outputs -----
        .rs1_data     ( rs1_data ),
        .rs2_data     ( rs2_data ),
        .rs_less_zero ( rs_less_zero ) 
    );
   
endmodule
