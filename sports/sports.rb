class Team
  attr_accessor :team_name, :players, :coach, :team_score

  def initialize(team_name, players, coach, team_score = 0)
    @team_name = team_name
    @players = players
    @coach = coach
    @team_score = team_score

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

  def player_is_in_team?(player)
    @players.include?(player)
  end

  def team_win(result)
    @team_score += 1 if result
  end


end
