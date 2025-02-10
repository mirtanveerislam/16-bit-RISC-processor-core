/*************************************************************
* File Name   : arth_logic_unit.v
* Design Name : arth_logic_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Arithmetic Logic Unit
* Change Log  : 
*************************************************************/

module arth_logic_unit (
    //----- inputs -----
    input  wire [2:0]  alu_ctrl,
    input  wire [15:0] dport1,
    input  wire [15:0] dport2,
    
    //----- outputs -----
    output wire [15:0] alu_out 
);

    //----- internal parameters -----
    localparam OP_ADD = 3'b000;
    localparam OP_SUB = 3'b001;
    localparam OP_AND = 3'b010;
    localparam OP_OR  = 3'b011;
    localparam OP_XOR = 3'b100;
    localparam OP_NOT = 3'b101;
    localparam OP_SLA = 3'b110;
    localparam OP_SRA = 3'b111;

    //----- internal signals -----
    reg [15:0] rslt_r;

    //----- assign outputs -----
    assign alu_out = rslt_r;

    //----- ALU execution -----
    always @ (*) begin
        case (alu_ctrl)
            OP_ADD  : rslt_r <= dport1 + dport2;    // do ADDition operation
            OP_SUB  : rslt_r <= dport1 - dport2;    // do SUBtract operation
            OP_AND  : rslt_r <= dport1 & dport2;    // do bitwise AND operation
            OP_OR   : rslt_r <= dport1 | dport2;    // do bitwise OR operation
            OP_XOR  : rslt_r <= dport1 ^ dport2;    // do bitwise XOR operation
            OP_NOT  : rslt_r <= ~dport1 ;           // do bitwise NOT operation
            OP_SLA  : rslt_r <= dport1 << 1;        // do Arithmatic Shift Left operation
            OP_SRA  : rslt_r <= dport1 >> 1;        // do Arithmatic Shift Right operation
            default : rslt_r <= 16'b0;              // do no ALU operation
        endcase
    end

endmodule
