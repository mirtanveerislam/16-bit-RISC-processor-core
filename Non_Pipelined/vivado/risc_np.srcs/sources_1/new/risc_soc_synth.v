/*************************************************************
* File Name   : risc_soc_synth.v
* Design Name : risc_soc_synth
* Version     : 
* Author      : 
* Date        : 
* Description : RISC SoC synthesis module
* Change Log  : 
*************************************************************/

module risc_soc_synth (
    //----- inputs -----
    input wire clk,
    input wire rst_n,
//    output wire [15:0] imem_rdata,
//    output wire [15:0] imem_addr,
//    output wire [15:0] dmem_rdata,
//    output wire [15:0] dmem_addr,
//    output wire [15:0] dmem_wdata,
//    output wire        dmem_wr,
    output wire        holt 
);
    //----- Parameters -----
    parameter imem_size = 64;
    parameter dmem_size = 32;

    //----- internal signals -----
    wire [15:0] imem_rdata;
    wire [15:0] imem_addr;
    wire [15:0] dmem_rdata;
    wire [15:0] dmem_addr;
    wire [15:0] dmem_wdata;
    wire        dmem_wr;
    
    //----- RISC core -----
    risc_core_np #(
        .imem_size ( imem_size )
    ) RISC_NP (
        //----- inputs -----
        .clk        ( clk        ),
        .rst_n      ( rst_n      ),
        .imem_rdata ( imem_rdata ),
        .dmem_rdata ( dmem_rdata ),
    
        //----- outputs -----
        .imem_addr  ( imem_addr  ),
        .dmem_addr  ( dmem_addr  ),
        .dmem_wdata ( dmem_wdata ),
        .dmem_wr    ( dmem_wr    ),
        .holt       ( holt       ) 
    );
    
    //----- Memory blocks -----
    blk_mem_gen_0 IMEM (
        .clka  ( clk        ),
        .ena   ( 1'b1       ),
        .wea   ( 1'b0       ),
        .addra ( imem_addr  ),
        .dina  ( 16'b0      ),
        .douta ( imem_rdata ) 
    );
    
    blk_mem_gen_0 DMEM (
        .clka  ( clk        ),
        .ena   ( 1'b1       ),
        .wea   ( dmem_wr    ),
        .addra ( dmem_addr  ),
        .dina  ( dmem_wdata ),
        .douta ( dmem_rdata ) 
    );

endmodule
