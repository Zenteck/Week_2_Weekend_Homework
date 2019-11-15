require('minitest/autorun')
require('minitest/reporters')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestSongs < Minitest::Test

  def setup
    @testsong = Song.new("The Passenger")
  end

  def test_name
    assert_equal("The Passenger", @testsong.name)
  end

  

end
