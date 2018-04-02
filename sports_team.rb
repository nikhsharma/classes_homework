class SportsTeam

  attr_reader :name, :players, :points
  attr_accessor :coach


  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def search_players(player)
    @players.include? player
  end

  def point_add_if_win(win)
    @points += 1 if win == true
  end
end
