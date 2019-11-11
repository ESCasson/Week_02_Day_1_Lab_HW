require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')


class TestTeam < MiniTest::Test

def test_can_create_team_object
players = ["Jane", "Sarah", "Sue"]
team = Team.new("Ruby on Skates", players, "Coach Georgie")
end

def test_team_name
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  assert_equal("Ruby on Skates",team.team_name)
end

  def test_team_name
    players = ["Jane", "Sarah", "Sue"]
    team = Team.new("Ruby on Skates", players, "Coach Georgie")
    assert_equal(players, team.players)

  end

def test_coach
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  assert_equal("Coach Georgie", team.coach)
end

def test_set_coach
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  team.coach = "Coach Taz"
  assert_equal("Coach Taz", team.coach)
end



def test_add_new_player
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  updated_players = ["Jane", "Sarah", "Sue", "Karen"]

  team.add_new_player("Karen")
  assert_equal(updated_players, team.players)

end



def test_checks_for_players_name__is_there
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  assert_equal("Sue is there", team.checks_for_players_name("Sue"))

end

def test_checks_for_players_name__is_not_there
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  assert_equal("Bob is not there", team.checks_for_players_name("Bob"))
end

def test_update_points__won
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  team.update_points("Won")
  assert_equal(1, team.points)
end

def test_update_points__lost
  players = ["Jane", "Sarah", "Sue"]
  team = Team.new("Ruby on Skates", players, "Coach Georgie")
  team.update_points("Lost")
  assert_equal(0, team.points)
end

##
end
##
