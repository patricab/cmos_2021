* SPICE netlist generated by Yosys 0.9 (git sha1 1979e0b1, gcc 10.3.0-1ubuntu1~20.10 -fPIC -Os)

X0 clk 1 IVX1_CV
X1 state.2 2 IVX1_CV
X2 3 4 IVX1_CV
X3 state.0 state.1 5 NRX1_CV
X4 state.0 state.1 6 ORX1_CV
X5 2 state.1 7 NDX1_CV
X6 6 7 8 ANX1_CV
X7 6 7 9 NDX1_CV
X8 10 9 11 ORX1_CV
X9 state.2 next_state.0 12 ANX1_CV
X10 5 12 13 NDX1_CV
X11 11 13 14 ANX1_CV
X12 state_reset 14 15 NRX1_CV
X13 state.0 ADC_finished 16 NRX1_CV
X14 state.1 3 17 ANX1_CV
X15 16 17 18 ANX1_CV
X16 9 18 19 NDX1_CV
X17 state.2 next_state.1 20 ANX1_CV
X18 5 20 21 NDX1_CV
X19 22 9 23 ORX1_CV
X20 21 23 24 ANX1_CV
X21 19 24 25 ANX1_CV
X22 state_reset 25 26 NRX1_CV
X23 state.0 7 27 ORX1_CV
X24 state.0 17 28 NDX1_CV
X25 27 28 29 NDX1_CV
X26 8 16 30 NRX1_CV
X27 29 30 31 ANX1_CV
X28 4 32 33 NDX1_CV
X29 state.2 6 34 ANX1_CV
X30 state_reset 34 35 NRX1_CV
X31 5 33 36 NDX1_CV
X32 35 36 37 NDX1_CV
X33 31 37 38 ORX1_CV
X34 next_state.0 18 39 NDX1_CV
X35 state.1 10 40 ORX1_CV
X36 3 40 41 NDX1_CV
X37 3 40 42 ANX1_CV
X38 6 42 43 ANX1_CV
X39 39 43 44 NDX1_CV
X40 45 41 46 ANX1_CV
X41 state_reset 46 47 NRX1_CV
X42 44 47 48 ANX1_CV
X43 next_state.1 18 49 NDX1_CV
X44 28 42 50 ANX1_CV
X45 49 50 51 NDX1_CV
X46 52 41 53 ANX1_CV
X47 state_reset 53 54 NRX1_CV
X48 51 54 55 ANX1_CV
X49 next_state.2 16 56 NDX1_CV
X50 7 56 57 ORX1_CV
X51 42 57 58 NDX1_CV
X52 32 41 59 ANX1_CV
X53 state_reset 59 60 NRX1_CV
X54 58 60 61 ANX1_CV
X55 10 22 62 NDX1_CV
X56 4 62 63 ANX1_CV
X57 ADC_reset 63 64 NDX1_CV
X58 28 64 65 NDX1_CV
X59 state.0 3 66 NDX1_CV
X60 state.1 66 67 ORX1_CV
X61 read 8 68 NDX1_CV
X62 67 68 69 NDX1_CV
X63 3 5 70 NDX1_CV
X64 frame_reset 63 71 NDX1_CV
X65 70 71 72 NDX1_CV
X66 expose_enable 8 73 NDX1_CV
X67 67 73 74 NDX1_CV
X68 clk 75 IVX1_CV
X69 clk 76 IVX1_CV
X70 clk 77 IVX1_CV
X71 15 clk AVSS AVSS state.0 10 DFSRQNX1_CV
X72 26 clk AVSS AVSS state.1 22 DFSRQNX1_CV
X73 38 clk AVSS AVSS state.2 3 DFSRQNX1_CV
X74 48 clk AVSS AVSS next_state.0 45 DFSRQNX1_CV
X75 55 clk AVSS AVSS next_state.1 52 DFSRQNX1_CV
X76 61 clk AVSS AVSS next_state.2 32 DFSRQNX1_CV
X77 74 75 AVSS AVSS expose_enable 78 DFSRQNX1_CV
X78 72 76 AVSS AVSS frame_reset 79 DFSRQNX1_CV
X79 69 77 AVSS AVSS read 80 DFSRQNX1_CV
X80 65 1 AVSS AVSS ADC_reset 81 DFSRQNX1_CV
V0 convert AVSS DC 0
V1 exposeCycles_pixel.0 AVSS DC 0
V2 exposeCycles_pixel.1 AVDD DC 0
V3 exposeCycles_pixel.2 AVSS DC 0
V4 exposeCycles_pixel.3 AVDD DC 0
V5 exposeCycles_pixel.4 AVSS DC 0
V6 exposeCycles_pixel.5 AVSS DC 0
V7 read_finished AVSS DC 0
V8 82 10 DC 0
V9 83 22 DC 0
V10 84 3 DC 0
V11 85 45 DC 0
V12 86 52 DC 0
V13 87 32 DC 0
V14 88 clk DC 0
V15 89 1 DC 0
V16 90 state.0 DC 0
V17 91 state.2 DC 0
V18 92 state.1 DC 0
V19 93 3 DC 0
V20 94 ADC_finished DC 0
V21 95 next_state.0 DC 0
V22 96 10 DC 0
V23 97.0 15 DC 0
V24 98 next_state.1 DC 0
V25 99 22 DC 0
V26 97.1 26 DC 0
V27 100 next_state.2 DC 0
V28 101 32 DC 0
V29 102 state_reset DC 0
V30 97.2 38 DC 0
V31 103 45 DC 0
V32 104.0 48 DC 0
V33 105 52 DC 0
V34 104.1 55 DC 0
V35 104.2 61 DC 0
V36 106 ADC_reset DC 0
V37 107 65 DC 0
V38 108 read DC 0
V39 109 69 DC 0
V40 110 frame_reset DC 0
V41 111 72 DC 0
V42 112 expose_enable DC 0
V43 113 74 DC 0
V44 114 75 DC 0
V45 115 76 DC 0
V46 116 77 DC 0

************************
* end of SPICE netlist *
************************
