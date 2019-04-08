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

  def test_player_is_in_team
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band', 'Billy Bongo'], 'Old Bilbo')
    team.player_is_in_team?("Billy Bob")
    assert_equal(true , team.players[0] == 'Billy Bob')
  end

  def test_team_score_default
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band', 'Billy Bongo'], 'Old Bilbo',)
    assert_equal(0, team.team_score)
  end

  def test_team_score_add_points
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band', 'Billy Bongo'], 'Old Bilbo',)
    team.team_win(true)
    assert_equal(1,team.team_score)
  end



end
