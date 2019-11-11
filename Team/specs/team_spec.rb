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
  team.set_coach("Coach Taz")
  assert_equal("Coach Taz", team.coach)
end


##
end
##
