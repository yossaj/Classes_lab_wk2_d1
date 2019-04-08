require('minitest/autorun')
require('minitest/rg')
require_relative('../sports')

class TestSports < MiniTest::Test

  def test_teams_name
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band'], 'Old Bilbo')
    assert_equal("The Sputters", team.team_name)
  end

  def test_set_coaches_name
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band'], 'Old Bilbo')
    team.coach=('New Bilbo')
    assert_equal('New Bilbo', team.coach)
  end

  def test_add_player_to_team
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band'], 'Old Bilbo')
    team.add_player_to_team('Billy Bongo')
    assert_equal( 4,team.players.count)
  end



end
