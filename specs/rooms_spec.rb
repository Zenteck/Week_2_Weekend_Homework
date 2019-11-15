require('minitest/autorun')
require('minitest/reporters')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestRooms < Minitest::Test

  def initialize
    @song1 = Song.new("Black Betty")
    @song2 = Song.new("Pround Mary")
    @song3 = Song.new("Free Fallin")
    @song4 = Song.new("Walk the Line")
    @song5 = Song.new("Jolene")
    @song6 = Song.new("Country Road")

    @guest1 = Guest.new

    @room1 = Room.new("K. Classics", 20, [@song1, @song2, @song3])
    @room2 = Room.new("Country/Western", 15, [@song4, @song5, @song6])

  end

end
