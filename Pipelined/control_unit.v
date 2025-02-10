/*************************************************************
* File Name   : control_unit.v
* Design Name : control_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Control Unit
* Change Log  : 
*************************************************************/

module control_unit #(
    parameter imem_size = 32
) (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  if_opcode,
    input  wire [3:0]  id_opcode,
    input  wire [3:0]  ex_opcode,
    input  wire [3:0]  wb_opcode,
    input  wire        rs_less_zero,
    input  wire [15:0] pc_val,
    
    //----- outputs -----
    output wire        pc_inc,
    output wire        pc_sel,
    output wire        pc_load,
    output wire        pc_rst_n,
    output wire        ir_wr,
    output wire        rf_wr_sel,
    output wire        rf_wr,
    output wire        dmem_wr,
    output wire        holt 
);

    //----- instruction set -----
    localparam I_ADD = 4'b0000;
    localparam I_SUB = 4'b0001;
    localparam I_AND = 4'b0010;
    localparam I_OR  = 4'b0011;
    localparam I_XOR = 4'b0100;
    localparam I_NOT = 4'b0101;
    localparam I_SLA = 4'b0110;
    localparam I_SRA = 4'b0111;
    localparam I_BLZ = 4'b1000;
    localparam I_JMP = 4'b1001;
    localparam I_JAL = 4'b1010;
    localparam I_RET = 4'b1011;
    localparam I_LI  = 4'b1100;
    localparam I_LW  = 4'b1101;
    localparam I_SW  = 4'b1110;
    localparam I_HLT = 4'b1111;
    
    //----- FSM states -----
    localparam S_RST = 2'b00;   // RESET state
    localparam S_NOR = 2'b01;   // Normal operation state
    localparam S_STL = 2'b10;   // Stall operation state
    localparam S_HLT = 2'b11;   // Holt State

    //----- state registers -----
    reg [1:0] current_state;
    reg [1:0] next_state;

    //----- internal signals -----
    wire rf_wr_pc;
    wire rf_wr_wb;
    wire blz_load;
    wire uncond_load;
    wire if_ctrl_op;
    wire wb_ctrl_op;
    wire if_holt;
    wire wb_holt;
    
    //----- assign outputs -----
    assign ir_wr     = ((current_state == S_NOR) & !(if_ctrl_op | if_holt)) | ((current_state == S_STL) & wb_ctrl_op);
    assign pc_inc    = (current_state == S_NOR) & !(if_ctrl_op | if_holt);
    assign pc_sel    = (current_state == S_STL) & (ex_opcode == I_RET);                            // I_RET = 4'b1011
    assign pc_load   = ((current_state == S_STL) & (blz_load | uncond_load)) & (!wb_ctrl_op);
    assign pc_rst_n  = !(pc_val == imem_size);
    assign rf_wr_sel = (current_state == S_STL) & (ex_opcode == I_JAL);
    assign rf_wr     = rf_wr_pc | rf_wr_wb;
    assign dmem_wr   = (ex_opcode == I_SW);                             // I_SW  = 4'b1110
    assign holt      = (current_state == S_HLT);
    
    assign rf_wr_pc = (current_state == S_STL) & (ex_opcode == I_JAL) & (!wb_ctrl_op);                             // I_JAL = 4'b1010;
    assign rf_wr_wb = (!ex_opcode[3] | (ex_opcode[2] & !ex_opcode[1])); // ALU_I = 4'b0xxx; I_LI  = 4'b1100; I_LW  = 4'b1101;
    
    assign blz_load    = rs_less_zero & (ex_opcode == I_BLZ);                              // I_BLZ = 4'b1000;
    assign uncond_load = ex_opcode[3] & !ex_opcode[2] & (ex_opcode[1] | ex_opcode[0]);     // I_JMP = 4'b1001; I_JAL = 4'b1010; I_RET = 4'b1011;
    
    assign if_ctrl_op = (if_opcode[3:2] == 2'b10);
    assign wb_ctrl_op = (wb_opcode[3:2] == 2'b10);
    assign if_holt    = (if_opcode == I_HLT);  // I_HLT = 4'b1111;
    assign wb_holt    = (wb_opcode == I_HLT);  // I_HLT = 4'b1111;
    
    //----- Finite State Machine -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            current_state <= S_RST;
        end
        else begin
            current_state <= next_state;
        end
    end
    
    always @ (*) begin
        case (current_state)
            S_RST : begin
                next_state <= S_NOR;
            end
            S_NOR  : begin
                if(if_ctrl_op | if_holt) begin
                    next_state <= S_STL;
                end
                else begin
                    next_state <= S_NOR;
                end
            end
            S_STL  : begin
                if(wb_ctrl_op) begin
                    next_state <= S_NOR;
                end
                else if(wb_holt) begin
                    next_state <= S_HLT;
                end
                else begin
                    next_state <= S_STL;
                end
            end
            S_HLT : begin
                next_state <= S_HLT;
            end
            default : begin
                next_state <= S_HLT;
            end
        endcase
    end
    
endmodule
