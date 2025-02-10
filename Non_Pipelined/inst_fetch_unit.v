/*************************************************************
* File Name   : inst_fetch_unit.v
* Design Name : inst_fetch_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Instruction Fetch Unit
* Change Log  : 
*************************************************************/

module inst_fetch_unit (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire        pc_inc,
    input  wire        pc_sel,
    input  wire        pc_load,
    input  wire        pc_rst_n,
    input  wire [15:0] pc_offset,
    input  wire [15:0] rs1_2_pc,
    input  wire [15:0] i_rdata,
    input  wire        ir_wr,

    //----- outputs -----
    output wire [15:0] pc_imem_radd,
    output wire [3:0]  opcode,
    output wire [3:0]  rd,
    output wire [3:0]  rs1,
    output wire [3:0]  rs2,
    output wire [7:0]  imm_off 
);

    //----- internal signals -----
    reg  [15:0] IR;
    reg  [15:0] PC;
    wire [15:0] pc_in;
    wire [15:0] pc_off;
    wire        pc_reset_n;
    
    //----- assign outputs -----
    assign pc_imem_radd = PC;
    assign opcode       = IR[15:12];
    assign rd           = IR[11:8];
    assign rs1          = IR[7:4];
    assign rs2          = IR[3:0];
    assign imm_off      = IR[7:0];
    
    //----- Instruction Register -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            IR <= 16'b0;
        end
        else if(ir_wr) begin
            IR <= i_rdata;
        end
    end

    //----- Program Counter -----
    assign pc_reset_n = rst_n & pc_rst_n;
    always @ (posedge clk or negedge pc_reset_n) begin
        if(!pc_reset_n) begin
            PC <= 16'b0;
        end
        else if(pc_inc) begin
            PC <= PC + 16'h0001;
        end
        else if(pc_load) begin
            PC <= pc_in;
        end
    end

    assign pc_off = PC + pc_offset;
    assign pc_in  = (pc_sel) ? rs1_2_pc : pc_off;

endmodule
