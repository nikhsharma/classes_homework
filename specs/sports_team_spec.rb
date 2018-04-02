require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

def setup
  @team = SportsTeam.new("Go! Team", ["Jim", "Bob", "Mann"], "Yoyo")
end

end
