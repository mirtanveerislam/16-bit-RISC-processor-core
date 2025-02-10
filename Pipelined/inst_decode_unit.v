/*************************************************************
* File Name   : inst_decode_unit.v
* Design Name : inst_decode_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Instruction Decode Unit
* Change Log  : 
*************************************************************/

module inst_decode_unit (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  imm_off,
    input  wire [15:0] rs1_rdata,
    input  wire [15:0] rs2_rdata,

    //----- outputs -----
    output wire [15:0] extd_imm_off,
    output wire [15:0] alu_rs1_data,
    output wire [15:0] alu_rs2_data 
);

    //----- internal signals -----
    reg  [15:0] alu_rs1_rdata;
    reg  [15:0] alu_rs2_rdata;
    wire [15:0] sign_extended;

    //----- assign outputs -----
    assign alu_rs1_data = rs1_rdata;
    assign alu_rs2_data = rs2_rdata;
    assign extd_imm_off = sign_extended;

//    signextender SEU(
//        //----- inputs -----
//        .clk     ( clk          ),
//        .rst_n   ( rst_n        ),
//        .in_8b   ( imm_off      ),
    
//        //----- outputs -----
//        .out_16b ( extd_imm_off ) 
//    );
    
    assign sign_extended = { {8{imm_off[7]}}, imm_off[7:0] };
    
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            alu_rs1_rdata <= 16'b0;
        end
        else begin
            alu_rs1_rdata <= rs1_rdata;
        end
    end
    
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            alu_rs2_rdata <= 16'b0;
        end
        else begin
            alu_rs2_rdata <= rs2_rdata;
        end
    end

endmodule
