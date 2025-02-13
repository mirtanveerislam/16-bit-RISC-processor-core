/*************************************************************
* File Name   : risc_soc.v
* Design Name : risc_soc
* Version     : 
* Author      : 
* Date        : 
* Description : RISC SoC module
* Change Log  : 
*************************************************************/

module risc_soc(
    //----- inputs -----
    input  wire clk,
    input  wire rst_n,

    //----- outputs -----
    output wire holt 
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
    risc_core_pl #(
        .imem_size ( imem_size )
    ) RISC_PL (
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
    memory #(
        .mem_size(imem_size)
    ) IMEM (
        //----- inputs -----
        .clk     ( clk        ),
        .address ( imem_addr  ),
        .wdata   ( 16'b0      ),
        .wr      ( 1'b0       ),
        
        //----- outputs -----
        .rdata   ( imem_rdata )
    );
    
    memory #(
        .mem_size(dmem_size)
    ) DMEM (
        //----- inputs -----
        .clk     ( clk        ),
        .address ( dmem_addr  ),
        .wdata   ( dmem_wdata ),
        .wr      ( dmem_wr    ),
        
        //----- outputs -----
        .rdata   ( dmem_rdata )
    );

endmodule
