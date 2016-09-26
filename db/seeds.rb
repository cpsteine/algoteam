# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'active_record/fixtures'

Player.delete_all
open("public/players.txt") do |players|
  players.read.each_line do |player|
    
    name, cost, team, position, opponent, projection = player.chomp.split("\t")
    
    Player.create!(name: name, cost: cost, team: team, position: position, opponent: opponent, projection: projection)
    
  end
end
