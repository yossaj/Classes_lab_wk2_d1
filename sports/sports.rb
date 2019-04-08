class Team
  attr_accessor :team_name, :players, :coach

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
  # def set_coaches_name(name)
  #   @coach = name
  # end

  def add_player_to_team(new_player)
    @players.push(new_player)
  end


end
