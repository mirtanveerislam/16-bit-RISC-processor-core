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
    input  wire [3:0]  opcode,
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
    localparam S_RST = 5'b00000;
    localparam S_IF  = 5'b00001;
    localparam S_ID  = 5'b00010;
    localparam S_EX  = 5'b00100;
    localparam S_WB  = 5'b01000;
    localparam S_HLT = 5'b10000;

    //----- state registers -----
    reg [4:0] current_state;
    reg [4:0] next_state;

    //----- internal signals -----
    wire rf_wr_ex;
    wire rf_wr_wb;
    wire blz_load;
    wire uncond_load;
    wire go_to_holt;
    
    //----- assign outputs -----
    assign ir_wr     = current_state[0];
    assign pc_inc    = current_state[1];
    assign pc_sel    = current_state[3] & (opcode == I_RET);                             // I_RET = 4'b1011
    assign pc_load   = current_state[3] & (blz_load | uncond_load);
    assign pc_rst_n  = !(pc_val == imem_size);
    assign rf_wr_sel = (opcode == I_JAL);
    assign rf_wr     = rf_wr_ex | rf_wr_wb;
    assign dmem_wr   = current_state[2] & (opcode == I_SW);                              // I_SW  = 4'b1110
    assign holt      = current_state[4];
    
    assign rf_wr_ex = current_state[2] & (opcode == I_JAL);                             // I_JAL = 4'b1010;
    assign rf_wr_wb = current_state[3] & (!opcode[3] | (opcode[2] & !opcode[1]));       // ALU_I = 4'b0xxx; I_LI  = 4'b1100; I_LW  = 4'b1101;
    
    assign blz_load    = rs_less_zero & (opcode == I_BLZ);                              // I_BLZ = 4'b1000;
    assign uncond_load = opcode[3] & !opcode[2] & (opcode[1] | opcode[0]);              // I_JMP = 4'b1001; I_JAL = 4'b1010; I_RET = 4'b1011;
    
    assign go_to_holt = opcode[3] & opcode[2] & opcode[1] & opcode[0];                        // I_HLT = 4'b1111;
    
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
                next_state <= S_IF;
            end
            S_IF  : begin
                // FETCH instruction
                // Retrieve Instruction Word from Instruction Memory
                // Increment Program Counter
                next_state <= S_ID;
            end
            S_ID  : begin
                // DECODE Instruction
                // FETCH operands
                // write incremented Program Count
                // Load Operands into Latches from Register File
                next_state <= S_EX;
            end
            S_EX  : begin
                // Perform ALU Operation based instruction word
                // Move data memory word for Load Word operation
                // Write Data into Memory from Register File for Store Word operation
                next_state <= S_WB;
            end
            S_WB  : begin
                // Write ALU/Immediate/MEM data into Register File
                // Write new Program Count for Jump Operation or it Branch taken
                if(go_to_holt) begin
                    next_state <= S_HLT;
                end
                else begin
                    next_state <= S_IF;
                end
            end
            S_HLT : begin
                // Holt execution
                next_state <= S_HLT;
            end
            default : begin
                next_state <= S_HLT;
            end
        endcase
    end
    
endmodule
