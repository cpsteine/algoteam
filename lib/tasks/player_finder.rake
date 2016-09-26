desc "This task digs up players"
task :player_finder => :environment do

best = Lineup.order('total DESC').first

team = []

team << Player.find(best.player_1_id)
team << Player.find(best.player_2_id)
team << Player.find(best.player_3_id)
team << Player.find(best.player_4_id)
team << Player.find(best.player_5_id)
team << Player.find(best.player_6_id)
team << Player.find(best.player_7_id)
team << Player.find(best.player_8_id)
team << Player.find(best.player_9_id)

puts team

team.each do |x|
  puts x.name, x.cost, x.team, x.projection
end

puts "Cost: #{best.cost}"
puts "Total: #{best.total}"





end




