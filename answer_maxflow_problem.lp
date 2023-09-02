Maximize
  flow_sa + flow_sb + flow_ab + flow_ae + flow_af  + flow_bc + flow_be + flow_fe + flow_fg + flow_ec + flow_eg + flow_ct + flow_gt 
Subject To
  Throughput_a : flow_sa - flow_ab - flow_ae - flow_af = 0
  Throughput_b : flow_sb + flow_ab - flow_bc - flow_be = 0
  Throughput_c : flow_bc + flow_ec - flow_ct = 0
  Throughput_e : flow_be + flow_ae + flow_fe - flow_ec - flow_eg = 0
  Throughput_f : flow_af - flow_fe - flow_fg = 0
  Throughput_g : flow_eg + flow_fg - flow_gt = 0
Bounds
  0 <= flow_sa <= 5
  0 <= flow_sb <= 7
  0 <= flow_ab <= 9
  0 <= flow_ae <= 4
  0 <= flow_af <= 6
  0 <= flow_bc <= 8
  0 <= flow_be <= 7
  0 <= flow_fe <= 8
  0 <= flow_fg <= 11
  0 <= flow_ec <= 5
  0 <= flow_eg <= 9
  0 <= flow_ct <= 3
  0 <= flow_gt <= 6
Integers
	flow_sa  flow_sb  flow_ab  flow_ae  flow_af   flow_bc  flow_be  flow_fe  flow_fg  flow_ec  flow_eg  flow_ct  flow_gt
End