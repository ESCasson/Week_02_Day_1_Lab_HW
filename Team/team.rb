class Team
attr_reader :team_name, :players, :points
attr_accessor :coach

def initialize(input_team_name, input_players, input_coach)

  @team_name = input_team_name
  @players = input_players
  @coach = input_coach
  @points = 0

end

def add_new_player(new_player)
@players.push(new_player)
end

def checks_for_players_name(name)
 for player in @players
   if player == name
     return "#{name} is there"
   end
 end
 return "#{name} is not there"
end

def update_points(won_lost)
  if won_lost == "Won"
    @points += 1
  end
end


end
