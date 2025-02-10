/*************************************************************
* File Name   : risc_tb.v
* Design Name : RISC_TB
* Version     : 
* Author      : 
* Date        : 
* Description : 
* Change Log  : 
*************************************************************/

module RISC_TB;
    logic CLK;
    logic RST_N;
    logic HOLT;
    logic [31:0] CLOCK_CYCLE_NUMBER;
    
    risc_soc RISC_SoC (
        .clk   ( CLK   ),
        .rst_n ( RST_N ),
        .holt  ( HOLT  ) 
    );
    
    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK; 
    end
    
    initial begin
	$display(" IR  : next PC");
        $display("--------------");
              RST_N = 1'b0;
        #50   RST_N = 1'b1;
        #1600 $stop;
    end

    //always @ (RISC_SoC.RISC_PL.DU.IFU.IR) begin
    //    $display("%H : %H", RISC_SoC.RISC_PL.DU.IFU.PC, RISC_SoC.RISC_PL.DU.IFU.IR);
    //end

    initial begin
	$monitor("%H :  %H", RISC_SoC.RISC_PL.DU.IFU.IR,RISC_SoC.RISC_PL.DU.IFU.PC);
    end

    always @ (posedge CLK or negedge RST_N) begin
        if(!RST_N) begin
            CLOCK_CYCLE_NUMBER <= 32'b0;
        end
        else if(!HOLT) begin
            CLOCK_CYCLE_NUMBER <= CLOCK_CYCLE_NUMBER + 32'b1;
        end
    end

endmodule
