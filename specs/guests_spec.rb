require('minitest/autorun')
require('minitest/reporters')
require_relative('../guests')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestGuests < Minitest::Test

  def setup

    @song1 = Song.new("Black Betty")
    @song2 = Song.new("Jolene")
    @guest1 = Guest.new("Jeb", @song1, 50)
  end

  def test_name
    assert_equal("Jeb", @guest1.name)
  end

  def test_fav_song
    assert_equal(@song1, @guest1.fav_song)
  end

  def test_pay_entry
    assert_equal(40, @guest1.pay_entry(40))
      assert_nil(@guest1.pay_entry(51))
  end

  def test_check_favourite_success
    assert_equal("Awesome!", @guest1.check_favourite([@song1]))
  end

  def test_check_favourite_fail
    assert_equal("I hate kareoke.", @guest1.check_favourite([@song2]))
  end


end
