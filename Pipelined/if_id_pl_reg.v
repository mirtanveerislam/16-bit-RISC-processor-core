/*************************************************************
* File Name   : if_id_pl_reg.v
* Design Name : if_id_pl_reg
* Version     : 
* Author      : 
* Date        : 
* Description : Pipeline register between IF and ID stages
* Change Log  : 
*************************************************************/

module if_id_pl_reg (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  if_opcode,
    input  wire [3:0]  if_rd,
    input  wire [3:0]  if_rs1,
    input  wire [3:0]  if_rs2,
    input  wire [7:0]  if_imm_off,

    //----- outputs -----
    output wire [3:0]  opcode_id,
    output wire [3:0]  rd_id,
    output wire [3:0]  rs1_id,
    output wire [3:0]  rs2_id,
    output wire [7:0]  imm_off_id 
);

    //----- internal signals -----
    reg [23:0] if_id_reg;
    
    //----- assign outputs -----
    assign opcode_id    = if_id_reg[3:0]  ;
    assign rd_id        = if_id_reg[7:4]  ;
    assign rs1_id       = if_id_reg[11:8] ;
    assign rs2_id       = if_id_reg[15:12];
    assign imm_off_id   = if_id_reg[23:16];

    //----- Register -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            if_id_reg <= 24'b0;
        end
        else begin
            if_id_reg[3:0]   <= if_opcode;
            if_id_reg[7:4]   <= if_rd;
            if_id_reg[11:8]  <= if_rs1;
            if_id_reg[15:12] <= if_rs2;
            if_id_reg[23:16] <= if_imm_off;
        end
    end

endmodule
