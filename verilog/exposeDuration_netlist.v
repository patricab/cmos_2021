/* Generated by Yosys 0.9 (git sha1 1979e0b1, gcc 10.3.0-1ubuntu1~20.10 -fPIC -Os) */

(* top =  1  *)
(* src = "exposeDuration.v:1" *)
module exposeDuration(exposecycles, clk, reset, expose_enable, expose_finished, expose);
  (* src = "exposeDuration.v:17" *)
  wire [5:0] _000_;
  (* src = "exposeDuration.v:17" *)
  wire _001_;
  (* src = "exposeDuration.v:17" *)
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  (* src = "exposeDuration.v:17" *)
  wire _060_;
  (* src = "exposeDuration.v:17" *)
  wire _061_;
  (* src = "exposeDuration.v:17" *)
  wire _062_;
  (* src = "exposeDuration.v:17" *)
  wire _063_;
  (* src = "exposeDuration.v:17" *)
  wire _064_;
  (* src = "exposeDuration.v:17" *)
  wire _065_;
  (* src = "exposeDuration.v:17" *)
  wire _066_;
  (* src = "exposeDuration.v:17" *)
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  (* src = "exposeDuration.v:11" *)
  wire _074_;
  (* src = "exposeDuration.v:11" *)
  wire _075_;
  (* src = "exposeDuration.v:11" *)
  wire _076_;
  (* src = "exposeDuration.v:11" *)
  wire _077_;
  (* src = "exposeDuration.v:11" *)
  wire _078_;
  (* src = "exposeDuration.v:11" *)
  wire _079_;
  (* src = "exposeDuration.v:7" *)
  wire _080_;
  (* src = "exposeDuration.v:5" *)
  wire _081_;
  (* src = "exposeDuration.v:6" *)
  wire _082_;
  (* src = "exposeDuration.v:2" *)
  wire _083_;
  (* src = "exposeDuration.v:2" *)
  wire _084_;
  (* src = "exposeDuration.v:2" *)
  wire _085_;
  (* src = "exposeDuration.v:2" *)
  wire _086_;
  (* src = "exposeDuration.v:2" *)
  wire _087_;
  (* src = "exposeDuration.v:2" *)
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  (* src = "exposeDuration.v:4" *)
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  (* src = "exposeDuration.v:3" *)
  input clk;
  (* init = 6'h00 *)
  (* src = "exposeDuration.v:11" *)
  wire [5:0] count;
  (* src = "exposeDuration.v:7" *)
  output expose;
  (* src = "exposeDuration.v:5" *)
  input expose_enable;
  (* src = "exposeDuration.v:6" *)
  output expose_finished;
  (* src = "exposeDuration.v:2" *)
  input [5:0] exposecycles;
  (* src = "exposeDuration.v:4" *)
  input reset;
  IVX1_CV _173_ (
    .A(_074_),
    .Y(_094_)
  );
  IVX1_CV _174_ (
    .A(_084_),
    .Y(_095_)
  );
  IVX1_CV _175_ (
    .A(_085_),
    .Y(_096_)
  );
  IVX1_CV _176_ (
    .A(_086_),
    .Y(_097_)
  );
  IVX1_CV _177_ (
    .A(_078_),
    .Y(_098_)
  );
  IVX1_CV _178_ (
    .A(_088_),
    .Y(_099_)
  );
  IVX1_CV _179_ (
    .A(_082_),
    .Y(_100_)
  );
  ORX1_CV _180_ (
    .A(_094_),
    .B(_083_),
    .Y(_101_)
  );
  NDX1_CV _181_ (
    .A(_097_),
    .B(_077_),
    .Y(_102_)
  );
  NDX1_CV _182_ (
    .A(_096_),
    .B(_076_),
    .Y(_103_)
  );
  NDX1_CV _183_ (
    .A(_102_),
    .B(_103_),
    .Y(_104_)
  );
  ORX1_CV _184_ (
    .A(_097_),
    .B(_077_),
    .Y(_105_)
  );
  ENX1_CV _185_ (
    .A(_086_),
    .B(_077_),
    .Y(_106_)
  );
  ENX1_CV _186_ (
    .A(_085_),
    .B(_076_),
    .Y(_107_)
  );
  ANX1_CV _187_ (
    .A(_106_),
    .B(_107_),
    .Y(_108_)
  );
  NDX1_CV _188_ (
    .A(_094_),
    .B(_083_),
    .Y(_109_)
  );
  ANX1_CV _189_ (
    .A(_095_),
    .B(_075_),
    .Y(_110_)
  );
  ENX1_CV _190_ (
    .A(_084_),
    .B(_075_),
    .Y(_111_)
  );
  ANX1_CV _191_ (
    .A(_109_),
    .B(_111_),
    .Y(_112_)
  );
  ORX1_CV _192_ (
    .A(_087_),
    .B(_098_),
    .Y(_113_)
  );
  NDX1_CV _193_ (
    .A(_099_),
    .B(_079_),
    .Y(_114_)
  );
  NDX1_CV _194_ (
    .A(_113_),
    .B(_114_),
    .Y(_115_)
  );
  NDX1_CV _195_ (
    .A(_087_),
    .B(_098_),
    .Y(_116_)
  );
  ORX1_CV _196_ (
    .A(_099_),
    .B(_079_),
    .Y(_117_)
  );
  NDX1_CV _197_ (
    .A(_116_),
    .B(_117_),
    .Y(_118_)
  );
  NRX1_CV _198_ (
    .A(_115_),
    .B(_118_),
    .Y(_119_)
  );
  NDX1_CV _199_ (
    .A(_108_),
    .B(_112_),
    .Y(_120_)
  );
  NDX1_CV _200_ (
    .A(_101_),
    .B(_119_),
    .Y(_121_)
  );
  ORX1_CV _201_ (
    .A(_120_),
    .B(_121_),
    .Y(_122_)
  );
  NDX1_CV _202_ (
    .A(_108_),
    .B(_110_),
    .Y(_123_)
  );
  NDX1_CV _203_ (
    .A(_104_),
    .B(_105_),
    .Y(_124_)
  );
  ANX1_CV _204_ (
    .A(_123_),
    .B(_124_),
    .Y(_125_)
  );
  NDX1_CV _205_ (
    .A(_115_),
    .B(_117_),
    .Y(_126_)
  );
  ANX1_CV _206_ (
    .A(_081_),
    .B(_126_),
    .Y(_127_)
  );
  NDX1_CV _207_ (
    .A(_120_),
    .B(_125_),
    .Y(_128_)
  );
  NDX1_CV _208_ (
    .A(_119_),
    .B(_128_),
    .Y(_129_)
  );
  ANX1_CV _209_ (
    .A(_127_),
    .B(_129_),
    .Y(_130_)
  );
  ENX1_CV _210_ (
    .A(_094_),
    .B(_130_),
    .Y(_131_)
  );
  NDX1_CV _211_ (
    .A(_122_),
    .B(_131_),
    .Y(_132_)
  );
  ORX1_CV _212_ (
    .A(_068_),
    .B(_122_),
    .Y(_133_)
  );
  ANX1_CV _213_ (
    .A(_132_),
    .B(_133_),
    .Y(_134_)
  );
  NRX1_CV _214_ (
    .A(_158_),
    .B(_134_),
    .Y(_060_)
  );
  ANX1_CV _215_ (
    .A(_074_),
    .B(_075_),
    .Y(_135_)
  );
  EOX1_CV _216_ (
    .A(_074_),
    .B(_075_),
    .Y(_136_)
  );
  NDX1_CV _217_ (
    .A(_130_),
    .B(_136_),
    .Y(_137_)
  );
  ORX1_CV _218_ (
    .A(_069_),
    .B(_130_),
    .Y(_138_)
  );
  ANX1_CV _219_ (
    .A(_137_),
    .B(_138_),
    .Y(_139_)
  );
  NRX1_CV _220_ (
    .A(_158_),
    .B(_139_),
    .Y(_061_)
  );
  ANX1_CV _221_ (
    .A(_076_),
    .B(_135_),
    .Y(_140_)
  );
  EOX1_CV _222_ (
    .A(_076_),
    .B(_135_),
    .Y(_141_)
  );
  NDX1_CV _223_ (
    .A(_130_),
    .B(_141_),
    .Y(_142_)
  );
  ORX1_CV _224_ (
    .A(_070_),
    .B(_130_),
    .Y(_143_)
  );
  ANX1_CV _225_ (
    .A(_142_),
    .B(_143_),
    .Y(_144_)
  );
  NRX1_CV _226_ (
    .A(_158_),
    .B(_144_),
    .Y(_062_)
  );
  NDX1_CV _227_ (
    .A(_130_),
    .B(_140_),
    .Y(_145_)
  );
  NDX1_CV _228_ (
    .A(_071_),
    .B(_145_),
    .Y(_146_)
  );
  NRX1_CV _229_ (
    .A(_071_),
    .B(_145_),
    .Y(_147_)
  );
  NRX1_CV _230_ (
    .A(_158_),
    .B(_147_),
    .Y(_148_)
  );
  ANX1_CV _231_ (
    .A(_146_),
    .B(_148_),
    .Y(_063_)
  );
  ANX1_CV _232_ (
    .A(_077_),
    .B(_140_),
    .Y(_149_)
  );
  ANX1_CV _233_ (
    .A(_078_),
    .B(_149_),
    .Y(_150_)
  );
  ENX1_CV _234_ (
    .A(_098_),
    .B(_149_),
    .Y(_151_)
  );
  NDX1_CV _235_ (
    .A(_130_),
    .B(_151_),
    .Y(_152_)
  );
  ORX1_CV _236_ (
    .A(_072_),
    .B(_130_),
    .Y(_153_)
  );
  ANX1_CV _237_ (
    .A(_152_),
    .B(_153_),
    .Y(_154_)
  );
  NRX1_CV _238_ (
    .A(_158_),
    .B(_154_),
    .Y(_064_)
  );
  NDX1_CV _239_ (
    .A(_130_),
    .B(_150_),
    .Y(_155_)
  );
  NDX1_CV _240_ (
    .A(_073_),
    .B(_155_),
    .Y(_156_)
  );
  NRX1_CV _241_ (
    .A(_073_),
    .B(_155_),
    .Y(_157_)
  );
  NRX1_CV _242_ (
    .A(_158_),
    .B(_157_),
    .Y(_089_)
  );
  ANX1_CV _243_ (
    .A(_156_),
    .B(_089_),
    .Y(_065_)
  );
  ORX1_CV _244_ (
    .A(_080_),
    .B(_130_),
    .Y(_090_)
  );
  ANX1_CV _245_ (
    .A(_122_),
    .B(_090_),
    .Y(_091_)
  );
  ORX1_CV _246_ (
    .A(_158_),
    .B(_091_),
    .Y(_066_)
  );
  ORX1_CV _247_ (
    .A(_100_),
    .B(_130_),
    .Y(_092_)
  );
  ANX1_CV _248_ (
    .A(_122_),
    .B(_092_),
    .Y(_093_)
  );
  NRX1_CV _249_ (
    .A(_158_),
    .B(_093_),
    .Y(_067_)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _250_ (
    .CK(clk),
    .D(_002_),
    .Q(expose_finished),
    .QN(_159_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _251_ (
    .CK(clk),
    .D(_001_),
    .Q(expose),
    .QN(_160_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _252_ (
    .CK(clk),
    .D(_000_[0]),
    .Q(count[0]),
    .QN(_161_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _253_ (
    .CK(clk),
    .D(_000_[1]),
    .Q(count[1]),
    .QN(_162_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _254_ (
    .CK(clk),
    .D(_000_[2]),
    .Q(count[2]),
    .QN(_163_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _255_ (
    .CK(clk),
    .D(_000_[3]),
    .Q(count[3]),
    .QN(_164_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _256_ (
    .CK(clk),
    .D(_000_[4]),
    .Q(count[4]),
    .QN(_165_),
    .R(1'h0),
    .S(1'h0)
  );
  (* src = "exposeDuration.v:17" *)
  DFSRQNX1_CV _257_ (
    .CK(clk),
    .D(_000_[5]),
    .Q(count[5]),
    .QN(_166_),
    .R(1'h0),
    .S(1'h0)
  );
  assign _004_ = _161_;
  assign _033_ = _162_;
  assign _037_ = _163_;
  assign _042_ = _164_;
  assign _047_ = _165_;
  assign _053_ = _166_;
  assign _074_ = count[0];
  assign _083_ = exposecycles[0];
  assign _084_ = exposecycles[1];
  assign _075_ = count[1];
  assign _085_ = exposecycles[2];
  assign _076_ = count[2];
  assign _086_ = exposecycles[3];
  assign _077_ = count[3];
  assign _087_ = exposecycles[4];
  assign _078_ = count[4];
  assign _088_ = exposecycles[5];
  assign _079_ = count[5];
  assign _081_ = expose_enable;
  assign _068_ = _161_;
  assign _000_[0] = _060_;
  assign _069_ = _162_;
  assign _000_[1] = _061_;
  assign _070_ = _163_;
  assign _000_[2] = _062_;
  assign _071_ = _164_;
  assign _000_[3] = _063_;
  assign _072_ = _165_;
  assign _000_[4] = _064_;
  assign _073_ = _166_;
  assign _000_[5] = _065_;
  assign _080_ = expose;
  assign _001_ = _066_;
  assign _082_ = expose_finished;
  assign _002_ = _067_;
  assign _158_ = reset;
endmodule