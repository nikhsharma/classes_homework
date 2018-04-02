require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Go! Team", ["Jim", "Bob", "Mann"], "Yoyo")
  end

  def test_team_name
    assert_equal("Go! Team", @team.name)
  end

  def test_team_players
    assert_equal(["Jim", "Bob", "Mann"], @team.players)
  end

  def test_team_coach
    assert_equal("Yoyo", @team.coach)
  end

  def test_update_team_coach
    @team.coach = "Bub"
    assert_equal("Bub", @team.coach)
  end

  def test_new_player
    @team.add_new_player("New Guy")
    assert_equal(["Jim", "Bob", "Mann", "New Guy"], @team.players)
  end

  def test_search_players
    assert_equal(true, @team.search_players("Bob"))
  end

  def test_point_add_if_win__win
    @team.point_add_if_win(true)
    assert_equal(1, @team.points)
  end

  def test_point_add_if_win__lose
    @team.point_add_if_win(false)
    assert_equal(0, @team.points)
  end

end
