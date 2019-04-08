require('minitest/autorun')
require('minitest/rg')
require_relative('../sports')

class TestSports < MiniTest::Test

  def test_teams_name
    team = Team.new("The Sputters", ['Billy Bob', 'Billy Balls', 'Billy Band'], 'Old Bilbo')
    assert_equal("The Sputters", team.team_name)

  end



end
