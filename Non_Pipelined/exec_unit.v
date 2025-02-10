/*************************************************************
* File Name   : exec_unit.v
* Design Name : exec_unit
* Version     : 
* Author      : 
* Date        : 
* Description : Execution Unit
* Change Log  : 
*************************************************************/

module exec_unit (
    //----- inputs -----
    input  wire        clk,
    input  wire        rst_n,
    input  wire [2:0]  alu_ctrl,
    input  wire [15:0] alu_data1,
    input  wire [15:0] alu_data2,
    input  wire [15:0] imm_val,
    input  wire [15:0] mem_data,
    input  wire        load_op,

    //----- outputs -----
    output wire [15:0] exu_data 
);

    //----- internal signals -----
    wire [15:0] alu_out;
//    wire        carry;
    reg  [15:0] li_lw;
    reg  [15:0] a_l;
    reg  [15:0] ex_data;

    //----- assign outputs -----
    assign exu_data = ex_data;

    arth_logic_unit ALU (
        //----- inputs -----
        .alu_ctrl ( alu_ctrl  ),
        .dport1   ( alu_data1 ),
        .dport2   ( alu_data2 ),
    
        //----- outputs -----
//        .carry   ( carry   ),
        .alu_out ( alu_out ) 
    );
    
    always @ (*) begin
        case(alu_ctrl[0])
            1'b0 : li_lw <= imm_val;
            1'b1 : li_lw <= mem_data;
        endcase
    end
    
    always @ (*) begin
        case(load_op)
            1'b0 : a_l <= alu_out;
            1'b1 : a_l <= li_lw;
        endcase
    end
    
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            ex_data <= 16'b0;
        end
        else begin
            ex_data <= a_l;
        end
    end

endmodule
