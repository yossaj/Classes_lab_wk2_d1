class Team
  attr_reader :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  # def team_name
  #   @team_name
  # end
  #
  # def players
  #   @players
  # end
  #
  # def coach
  #   @coach
  # end
end
