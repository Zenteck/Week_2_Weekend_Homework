require('minitest/autorun')
require('minitest/reporters')
require_relative('../guests')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestGuests < Minitest::Test

  def setup

    @song1 = Song.new("Black Betty")
    @guest1 = Guest.new("Jeb", @song1, 50)
  end

  def test_name
    assert_equal("Jeb", @guest1.name)
  end

  def test_fav_song
    assert_equal(@song1, @guest1.fav_song)
  end

  def test_remove_cash
    assert_equal(30, (@guest1.cash - 20))
  end
  

end
