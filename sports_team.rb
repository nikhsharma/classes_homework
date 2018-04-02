class SportsTeam

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def name()
    return @name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end

  def update_coach(coach)
    @coach = coach
  end

end
