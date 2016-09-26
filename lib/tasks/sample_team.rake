desc "This task build a dummy team"
task :sample_team => :environment do

qbs = Player.where(position: "QB") 
rbs = Player.where(position: "RB")
wrs = Player.where(position: "WR")
tes = Player.where(position: "TE")
dsts = Player.where(position: "DST")
flexs = rbs + wrs + tes                 

qb = qbs.sample
rb1 = rbs.sample
  rbs2 = rbs - [rb1] 
rb2 = rbs2.sample
wr1 = wrs.sample
  wrs2 = wrs - [wr1] 
wr2 = wrs2.sample
  wrs3 = wrs2 - [wr2] 
wr3 = wrs3.sample
te = tes.sample
dst = dsts.sample
flexers = flexs - [rb1] - [rb2] - [wr1] - [wr2] - [wr3] - [te]
flex = flexers.sample
      

total = qb.projection + rb1.projection + rb2.projection + wr1.projection + wr2.projection + wr3.projection + flex.projection + dst.projection + te.projection

Lineup.create!(player_1_id: qb.id, player_2_id: rb1.id, player_3_id: rb2.id, player_4_id: wr1.id, player_5_id: wr2.id, player_6_id: wr3.id, player_7_id: te.id, player_8_id: dst.id, player_9_id: flex.id, total: total, cost: 90)

end

