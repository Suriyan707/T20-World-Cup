# Retrieve all players of a specific team.
 players=Playe.where(team_id:team_id).pluck

# Retrieve players older than a certain age.
 players=Playe.where("age > ?"), age.pluck
 
# List all players and their corresponding teams.
 Playe.all

# Insert a new player into a team.
 new_player =Playe.create!(name: "suriya", age:24 , position: "Midfielder" , team_id: 7)

# Update a player's position.
 p="Player6"
 Playe.find(name:p).update(position: "Midfielder")

# Delete a player by their name.
 delete=Playe.find_by(name: 'Player16')
 delete.destroy

# Get the count of players in each team including teams without any players.
 team_player_counts = Team.left_joins(:playes).group(:id).count(:team_id)

# Filter teams with more than a certain number of players.
teams_more_than_3players = Player.select('team_id, COUNT(*) as player_count').group(:team_id).having('player_count > 3')

#  Retrieve the average age of players in each team.
 teamwise_players_average_age = Player.select('team_id, AVG(age) as average_age').group(:team_id)
  teamwise_players_average_age.each do |p|
    puts "Team #{p.team_id} has average age of #{p.average_age}"
 end




