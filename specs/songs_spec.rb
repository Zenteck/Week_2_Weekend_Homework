require('minitest/autorun')
require('minitest/reporters')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSongs < Minitest::Test

  def setup
    @song = Song.new("The Passenger")
  end 


end
