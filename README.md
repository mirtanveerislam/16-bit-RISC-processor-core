# 16-bit-RISC-processor-core
Non-pipelined and Pipelined version of a 16-bit RISC processor core and comparison of their differences.


                 ISA instruction table
The ISA of this processor consists of 16 instructions with a 4-bit fixed size operation code. The instruction words are 16-bits long. There are 16, 16-bit wide architected register available.
-----------------------------------------------------
| OP  | 15 14 13 12 | 11 10 9 8 | 7 6 5 4 | 3 2 1 0 |
|-----|-------------|-----------|---------|---------|
| ADD |      0      |     rd    |   rs1   |   rs2   |
| SUB |      1      |     rd    |   rs1   |   rs2   |
| AND |      2      |     rd    |   rs1   |   rs2   |
| OR  |      3      |     rd    |   rs1   |   rs2   |
| XOR |      4      |     rd    |   rs1   |   rs2   |
| NOT |      5      |     rd    |   rs1   |    0    |
| SLA |      6      |     rd    |   rs1   |    0    |
| SRA |      7      |     rd    |   rs1   |    0    |
| BLZ |      8      |     rs1   |      Off_set      |
| JMP |      9      |     0     |      Off_set      |
| JAL |      A      |     rd    |      Off_set      |
| RET |      B      |     0     |   rs1   |    0    |
| LI  |      C      |     rd    |     Immediate     |
| LW  |      D      |     rd    |   rs1   |    0    |
| SW  |      E      |     0     |   rs1   |   rs2   |
| HLT |      F      |     0     |   0     |    0    |
