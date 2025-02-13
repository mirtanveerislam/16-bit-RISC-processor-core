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
    logic       CLK;
    logic       RST_N;
    logic       HOLT;
    logic [7:0] CLOCK_CYCLE;
    
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
        $display("|--------------------------|");
        $display("|  CC   :   IR   | next PC |");
        $display("|-------:--------|---------|");
              RST_N = 1'b0;
        #50   RST_N = 1'b1;
        // #1600 $stop;
    end

    initial begin
        $monitor("|  %D  :  %H  |  %H   |", CLOCK_CYCLE, RISC_SoC.RISC_NP.DU.IFU.IR, RISC_SoC.RISC_NP.DU.IFU.PC);
    end

    always @ (posedge CLK or negedge RST_N) begin
        if(!RST_N) begin
            CLOCK_CYCLE <= 32'b0;
        end
        else if(!HOLT) begin
            CLOCK_CYCLE <= CLOCK_CYCLE + 32'b1;
        end
	else if(HOLT) begin
            CLOCK_CYCLE <= CLOCK_CYCLE;
            $display("|--------------------------|");
            $stop;
        end
    end

endmodule
