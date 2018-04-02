class SportsTeam

  attr_reader :name, :players
  attr_accessor :coach


  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # def update_coach(coach)
  #   @coach = coach
  # end

end
