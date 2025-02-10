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
//    input  wire  [1:0] rf_wr_sel,
    input  wire        rf_wr_sel,
    input  wire        rf_wr,
    input  wire [15:0] imem_rdata,
    input  wire [15:0] dmem_rdata,
    
    //----- outputs -----
    output wire [3:0]  if_opcode,
    output wire [3:0]  id_opcode,
    output wire [3:0]  ex_opcode,
    output wire [3:0]  wb_opcode,
    output wire        rs_less_zero,
    output wire [15:0] imem_addr,
    output wire [15:0] dmem_addr,
    output wire [15:0] dmem_wdata 
);

    //----- internal signals -----
    wire [3:0]  if_rd;
    wire [3:0]  if_rs1;
    wire [3:0]  if_rs2;
    wire [7:0]  if_imm_off;
    wire [15:0] rf_rs1_data;
    wire [15:0] rf_rs2_data;
    wire [3:0]  id_rd;
    wire [3:0]  id_rs1;
    wire [3:0]  id_rs2;
    wire [7:0]  id_imm_off;
    wire [15:0] id_extd_imm_off;
    wire [15:0] id_rs1_data;
    wire [15:0] id_rs2_data;
    wire        id_rs1_eq_ex_rd;
    wire        id_rs1_eq_wb_rd;
    reg  [15:0] id_rs1_data_ex;
    wire        id_rs2_eq_ex_rd;
    wire        id_rs2_eq_wb_rd;
    reg  [15:0] id_rs2_data_ex;
    wire [3:0]  ex_rd;
    wire [15:0] ex_immediate;
    wire        load_op;
    wire [2:0]  alu_ctrl;
    wire [15:0] alu_rs1_data;
    wire [15:0] alu_rs2_data;
    wire [15:0] ex_exu_data;
    wire [3:0]  wb_rd;
    wire [15:0] wb_exu_data;
    wire        wb_rf_wr;
    wire        wb_rf_wr_sel;
    wire [15:0] rf_wdata;
    wire        if_rd_eq_wb_rd;
    wire        rf_rs_less_zero;
    reg  [15:0] store_pc;
    
    //----- assign outputs -----
    assign dmem_addr  = alu_rs1_data;
    assign dmem_wdata = alu_rs2_data;
    assign rs_less_zero = (if_rd_eq_wb_rd) ? wb_exu_data : rf_rs_less_zero;
    
    //----- Instruction Fetch Unit -----
    inst_fetch_unit IFU (
        //----- inputs -----
        .clk          ( clk             ),
        .rst_n        ( rst_n           ),
        .pc_inc       ( pc_inc          ),
        .pc_sel       ( pc_sel          ),
        .pc_load      ( pc_load         ),
        .pc_rst_n     ( pc_rst_n        ),
        .pc_offset    ( id_extd_imm_off ),
        .rs1_2_pc     ( alu_rs1_data    ),
        .i_rdata      ( imem_rdata      ),
        .ir_wr        ( ir_wr           ),
    
        //----- outputs -----
        .pc_imem_radd ( imem_addr       ),
        .opcode       ( if_opcode       ),
        .rd           ( if_rd           ),
        .rs1          ( if_rs1          ),
        .rs2          ( if_rs2          ),
        .imm_off      ( if_imm_off      ) 
    );

    //----- IF_ID_pipeline_register -----
    if_id_pl_reg FDPR(
        //----- inputs -----
        .clk        ( clk        ),
        .rst_n      ( rst_n      ),
        .if_opcode  ( if_opcode  ),
        .if_rd      ( if_rd      ),
        .if_rs1     ( if_rs1     ),
        .if_rs2     ( if_rs2     ),
        .if_imm_off ( if_imm_off ),
    
        //----- outputs -----
        .opcode_id  ( id_opcode  ),
        .rd_id      ( id_rd      ),
        .rs1_id     ( id_rs1     ),
        .rs2_id     ( id_rs2     ),
        .imm_off_id ( id_imm_off ) 
    );

    //----- Instruction Decode Unit -----
    inst_decode_unit IDU (
        //----- inputs -----
        .clk          ( clk             ),
        .rst_n        ( rst_n           ),
        .imm_off      ( id_imm_off      ),
        .rs1_rdata    ( rf_rs1_data     ),
        .rs2_rdata    ( rf_rs2_data     ),
    
        //----- outputs -----
        .extd_imm_off ( id_extd_imm_off ),
        .alu_rs1_data ( id_rs1_data     ),
        .alu_rs2_data ( id_rs2_data     ) 
    );

    //----- ID_EX_pipeline_register -----
    always @ (*) begin
        if(id_rs1_eq_ex_rd) begin
            id_rs1_data_ex <= ex_exu_data;
        end
        else if(id_rs1_eq_wb_rd) begin
            id_rs1_data_ex <= wb_exu_data;
        end
        else begin
            id_rs1_data_ex <= id_rs1_data;
        end
    end

    always @ (*) begin
        if(id_rs2_eq_ex_rd) begin
            id_rs2_data_ex <= ex_exu_data;
        end
        else if(id_rs2_eq_wb_rd) begin
            id_rs2_data_ex <= wb_exu_data;
        end
        else begin
            id_rs2_data_ex <= id_rs2_data;
        end
    end
    
    id_ex_pl_reg DEPR (
        //----- inputs -----
        .clk             ( clk             ),
        .rst_n           ( rst_n           ),
        .id_opcode       ( id_opcode       ),
        .id_rd           ( id_rd           ),
        .id_extd_imm_off ( id_extd_imm_off ),
        .id_rs1_data     ( id_rs1_data_ex  ),
        .id_rs2_data     ( id_rs2_data_ex  ),
    
        //----- outputs -----
        .opcode_ex       ( ex_opcode       ),
        .rd_ex           ( ex_rd           ),
        .rs1_data_ex     ( alu_rs1_data    ),
        .rs2_data_ex     ( alu_rs2_data    ),
        .imm_val_ex      ( ex_immediate    ) 
    );

    //----- Execution Unit -----
    assign load_op  = ex_opcode[3];
    assign alu_ctrl = ex_opcode[2:0];
    
    exec_unit EXU (
        //----- inputs -----
        .clk       ( clk          ),
        .rst_n     ( rst_n        ),
        .alu_ctrl  ( alu_ctrl     ),
        .alu_data1 ( alu_rs1_data ),
        .alu_data2 ( alu_rs2_data ),
        .imm_val   ( ex_immediate ),
        .mem_data  ( dmem_rdata   ),
        .load_op   ( load_op      ),
    
        //----- outputs -----
        .exu_data  ( ex_exu_data  ) 
    );

    //----- EX_WB_pipeline_register -----
    ex_wb_pl_reg EWPR (
        //----- inputs -----
        .clk          ( clk         ),
        .rst_n        ( rst_n       ),
        .ex_opcode    ( ex_opcode   ),
        .ex_rd        ( ex_rd       ),
        .ex_exu_data  ( ex_exu_data ),
        .ex_rf_wr     ( rf_wr       ),
        .ex_rf_wr_sel ( rf_wr_sel   ),
    
        //----- outputs -----
        .opcode_wb    ( wb_opcode    ),
        .rd_wb        ( wb_rd        ),
        .exu_data_wb  ( wb_exu_data  ),
        .rf_wr_wb     ( wb_rf_wr     ),
        .rf_wr_sel_wb ( wb_rf_wr_sel ) 
    );

    //----- Register File -----
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            store_pc <= 16'b0;
        end
        else begin
            store_pc <= imem_addr;
        end
    end
    
    assign rf_wdata = (wb_rf_wr_sel) ? store_pc : wb_exu_data;
    
    regfile RF (
        //----- inputs -----
        .clk          ( clk             ),
        .rst_n        ( rst_n           ),
        .rs1          ( id_rs1          ),
        .rs2          ( id_rs2          ),
        .rd           ( wb_rd           ),
        .blz_rs1      ( if_rd           ),
        .rf_wr        ( wb_rf_wr        ),
        .rf_wdata     ( rf_wdata        ),
        
        //----- outputs -----
        .rs1_data     ( rf_rs1_data     ),
        .rs2_data     ( rf_rs2_data     ),
        .rs_less_zero ( rf_rs_less_zero ) 
    );

    //----- Data Forward Unit -----
    data_forwarding_unit DFU (
        //----- inputs -----
        .clk             ( clk             ),
        .rst_n           ( rst_n           ),
        .id_rs1          ( id_rs1          ),
        .id_rs2          ( id_rs2          ),
        .ex_rd           ( ex_rd           ),
        .wb_rd           ( wb_rd           ),
        .if_rd           ( if_rd           ),
    
        //----- outputs -----
        .id_rs1_eq_ex_rd ( id_rs1_eq_ex_rd ),
        .id_rs1_eq_wb_rd ( id_rs1_eq_wb_rd ),
        .id_rs2_eq_ex_rd ( id_rs2_eq_ex_rd ),
        .id_rs2_eq_wb_rd ( id_rs2_eq_wb_rd ),
        .if_rd_eq_wb_rd  ( if_rd_eq_wb_rd  ) 
    );
   
endmodule
