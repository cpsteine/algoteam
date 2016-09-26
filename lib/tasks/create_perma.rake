
desc "This task saves best lineups to different table"
task :create_perma => :environment do


best = Lineup.order('total DESC').first

cost = 0

cost =  Player.find(best.player_1_id).cost +
        Player.find(best.player_2_id).cost +
        Player.find(best.player_3_id).cost +
        Player.find(best.player_4_id).cost +
        Player.find(best.player_5_id).cost +
        Player.find(best.player_6_id).cost +
        Player.find(best.player_7_id).cost +
        Player.find(best.player_8_id).cost +
        Player.find(best.player_9_id).cost


PermanentLineup.create!(player_1_id: best.player_1_id, player_2_id: best.player_2_id, player_3_id: best.player_3_id, player_4_id: best.player_4_id, 
player_5_id: best.player_5_id, player_6_id: best.player_6_id, player_7_id: best.player_7_id, player_8_id: best.player_8_id, player_9_id: best.player_9_id, total: best.total, cost: cost)

end