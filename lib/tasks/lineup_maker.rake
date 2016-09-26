desc "This task goes nuts"
task :lineup_maker => :environment do


qbs = Player.where(position: "QB") - [Player.find(474)]
rbs = Player.where(position: "RB") # - [Player.find(386)] - [Player.find(387)]
wrs = Player.where(position: "WR") # - [Player.find(318)] - [Player.find(325)] - [Player.find(327)]
tes = Player.where(position: "TE") 
dsts = Player.where(position: "DST")
flexs = rbs + wrs + tes


qbs.each do |qb|
   rbs.each do |rb1|
     rbs2 = rbs - [rb1]
     rbs2.each do |rb2|
       wrs.each do |wr1|
         wrs2 = wrs - [wr1]
         wrs2.each do |wr2|
          wrs3 = wrs2 - [wr2]
          wrs3.each do |wr3|
            tes.each do |te|
              flexit = flexs - [wr1] - [wr2] - [wr3] - [rb1] - [rb2] - [te]
              dsts.each do |dst|
                flexit.each do |flex|
                  total = qb.projection + rb1.projection + rb2.projection + wr1.projection + wr2.projection + wr3.projection + flex.projection + dst.projection + te.projection
                  total_cost = qb.cost + rb1.cost + rb2.cost + wr1.cost + wr2.cost + wr3.cost + flex.cost + dst.cost + te.cost
                  
                  if total_cost <= 50000                  
                    lineupsnow = Lineup.order('total DESC')
                    if total > lineupsnow.last.total
                      lineupsnow.last.delete
                      Lineup.create!(player_1_id: qb.id, player_2_id: rb1.id, player_3_id: rb2.id, player_4_id: wr1.id, player_5_id: wr2.id, player_6_id: wr3.id, player_7_id: te.id, player_8_id: dst.id, player_9_id: flex.id, total: total, cost: total_cost)
                    end
                  else
                  end
                end
              end
            end
          end
         end   
        end
      end
end
end
end
