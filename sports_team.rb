class SportsTeam

  attr_reader :name, :players
  attr_accessor :coach


  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def search_players(player)
    @players.include? player
  end
end
