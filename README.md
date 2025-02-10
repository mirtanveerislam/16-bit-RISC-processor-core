# 16-bit-RISC-processor-core
Non-pipelined and Pipelined version of a 16-bit RISC processor core and comparison of their differences


                 ISA instruction table
------------------------------------------------------------------
| OP  | 15 14 13 12 | 11 10 9 8 | 7 6 5 4 | 3 2 1 0 || registers |
|-----|-------------|-----------|---------|---------||-----------|
| ADD |      0      |     rd    |   rs1   |   rs2   ||    X0     |
| SUB |      1      |     rd    |   rs1   |   rs2   ||    X1     |
| AND |      2      |     rd    |   rs1   |   rs2   ||    X2     |
| OR  |      3      |     rd    |   rs1   |   rs2   ||    X3     |
| XOR |      4      |     rd    |   rs1   |   rs2   ||    X4     |
| NOT |      5      |     rd    |   rs1   |    0    ||    X5     |
| SLA |      6      |     rd    |   rs1   |    0    ||    X6     |
| SRA |      7      |     rd    |   rs1   |    0    ||    X7     |
| BLZ |      8      |     rs1   |      Off_set      ||    X8     |
| JMP |      9      |     0     |      Off_set      ||    X9     |
| JAL |      A      |     rd    |      Off_set      ||    X10    |
| RET |      B      |     0     |   rs1   |    0    ||    X11    |
| LI  |      C      |     rd    |     Immediate     ||    X12    |
| LW  |      D      |     rd    |   rs1   |    0    ||    X13    |
| SW  |      E      |     0     |   rs1   |   rs2   ||    X14    |
| HLT |      F      |     0     |   0     |    0    ||    X15    |
------------------------------------------------------------------
