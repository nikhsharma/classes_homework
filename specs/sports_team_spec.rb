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

end
