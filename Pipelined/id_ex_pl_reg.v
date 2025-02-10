/*************************************************************
* File Name   : id_ex_pl_reg.v
* Design Name : id_ex_pl_reg
* Version     : 
* Author      : 
* Date        : 
* Description : Pipeline register between ID and EX stages
* Change Log  : 
*************************************************************/

module id_ex_pl_reg (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  id_opcode,
    input  wire [3:0]  id_rd,
    input  wire [15:0] id_extd_imm_off,
    input  wire [15:0] id_rs1_data,
    input  wire [15:0] id_rs2_data,

    //----- outputs -----
    output wire [3:0]  opcode_ex,
    output wire [3:0]  rd_ex,
    output wire [15:0] rs1_data_ex,
    output wire [15:0] rs2_data_ex,
    output wire [15:0] imm_val_ex 
);


    //----- internal signals -----
    reg  [55:0] id_ex_reg;
    
    //----- assign outputs -----
    assign opcode_ex   = id_ex_reg[3:0];
    assign rd_ex       = id_ex_reg[7:4];
    assign imm_val_ex  = id_ex_reg[23:8];
    assign rs1_data_ex = id_ex_reg[39:24];
    assign rs2_data_ex = id_ex_reg[55:40];

    //----- Register -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            id_ex_reg <= 56'b0;
        end
        else begin
            id_ex_reg[3:0]   <= id_opcode;
            id_ex_reg[7:4]   <= id_rd;
            id_ex_reg[23:8]  <= id_extd_imm_off;
            id_ex_reg[39:24] <= id_rs1_data;
            id_ex_reg[55:40] <= id_rs2_data;
        end
    end

endmodule
