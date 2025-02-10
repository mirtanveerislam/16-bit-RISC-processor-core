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
//    output wire        carry,
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
//    reg        c_reg;
    reg [15:0] rslt_r;
//    reg        temp;

    //----- assign outputs -----
    assign alu_out = rslt_r;
//    assign carry   = c_reg;

    //----- ALU execution -----
    always @ (*) begin
        case (alu_ctrl)
            OP_ADD : begin
                /*{temp,*/rslt_r/*}*/ <= dport1 + dport2;    // do ADDition operation
                /*
                //----- generate appropriate carry -----
                if(dport1[15] == dport2[15]) begin
                    c_reg <= temp;
                end
                else begin
                    if(dport1[15] == 1) begin
                        c_reg <= 1'b1;
                    end
                    else begin
                        c_reg <= 1'b0;
                    end
                end*/
            end
            OP_SUB : begin
                /*{temp,*/rslt_r/*}*/ <= dport1 - dport2;    // do SUBtract operation
                /*
                //----- generate appropriate carry -----
                if(dport1[15] == dport2[15]) begin
                    c_reg <= temp;
                end
                else begin
                    if(dport1[15] == 1) begin
                        c_reg <= 1'b1;
                    end
                    else begin
                        c_reg <= 1'b0;
                    end
                end*/
            end
            OP_AND : begin
                rslt_r <= dport1 & dport2;  // do AND operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            OP_OR  : begin 
                rslt_r <= dport1 | dport2;  // do OR operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            OP_XOR : begin
                rslt_r <= dport1 ^ dport2;  // do XOR operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            OP_NOT : begin
                rslt_r <= ~dport1 ; // do NOT operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            OP_SLA : begin
                rslt_r <= dport1 << 1;  // do SLA operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            OP_SRA : begin
                rslt_r <= dport1 >> 1;  // do SRA operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
            default : begin
                rslt_r <= 16'b0;    // do no ALU operation
//                c_reg  <= 1'b0;
//                temp   <= 1'b0;
            end
        endcase
    end

endmodule
