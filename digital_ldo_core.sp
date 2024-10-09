
.include 'as.post.sp'
.include 'DigitalLDOLogic.sp'
.include 'rs_latch.sp'
.include 'pass_transistors.sp'

.SUBCKT ldo_core ldotop_vref ldotop_vdd ldotop_vss ldotop_clk ldotop_rst ldotop_vout 

  xinst0 ldotop_vss output_p ldotop_vout ldotop_vref ldotop_clk ldotop_vdd output_n strong_arm
  xinst1 output_p output_n ldotop_vdd ldotop_vss rs_out_p rs_out_n rs_latch
  xinst2 vdd ldotop_vss rs_out_p fake_output inverter
  xinst3 vdd ldotop_vss rs_out_n real_output inverter
  xinst4 ldotop_clk ldotop_rst real_output out9 out8 out7 out6 out5 out4 out3 out2 out1 out0 ldotop_vdd ldotop_vss DigitalLDOLogic
  xinst5 out9 out8 out7 out6 out5 out4 out3 out2 out1 out0 ldotop_vout ldotop_vdd pass_transistors

.ENDS ldo_core

