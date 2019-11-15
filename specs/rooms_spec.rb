require('minitest/autorun')
require('minitest/reporters')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestRooms < Minitest::Test

  def setup
    @song1 = Song.new("Black Betty")
    @song2 = Song.new("Pround Mary")
    @song3 = Song.new("Free Fallin")
    @song4 = Song.new("Black Velvet")
    @song5 = Song.new("Sweet Child of Mine")
    @song6 = Song.new("Walk the Line")
    @song7 = Song.new("Country Road")
    @song8 = Song.new("Sweet Home Alabama")
    @song9 = Song.new("Jolene")
    @song10 = Song.new("9 to 5")

    @guest1 = Guest.new("Jeb", @song1, 100)
    @guest2 = Guest.new("Bob", @song5, 50)
    @guest3 = Guest.new("Val", @song10, 30)
    @guest4 = Guest.new("Bill", @song7, 10)

    @room1 = Room.new("K. Classics", 20, [@song1, @song2, @song3, @song4], 3)
    @room2 = Room.new("Country/Western", 15, [@song6, @song7, @song8, @song9], 2)
  end

  def test_room_genre
    assert_equal("K. Classics", @room1.genre)
  end

  def test_room_playlist
    assert_equal(["Black Betty","Pround Mary","Free Fallin","Black Velvet"],
      @room1.playlist.map{|song| song.name})
  end

  def test_add_song
    assert_equal([@song1, @song2, @song3, @song4, @song5], @room1.add_song(@song5))
  end

  def test_check_in_guest
    @room2.check_in_guest(@guest3)
    assert_equal([@guest3], @room2.guestlist)
  end

  def test_check_out_guest
    @room2.check_in_guest(@guest3)
    @room2.check_in_guest(@guest4)
    @room2.check_out_guest(@guest3)
    assert_equal([@guest4], @room2.guestlist)
  end






end



# :star: This is a PDA Homework :star:
#
# You have been approached to build software for a Karaoke bar. Specifically, they want you to build a software for checking guests in and out, plus handling songs.
#
# Your program should be test driven and should be able to:
#
#     Create rooms, songs and guests
#     Check in guests to rooms/Check out guests from rooms
#     Add songs to rooms
#
# Extensions
#
#     What happens if there are more guests trying to be checked in than there is free space in the room?
#     Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
#
# Advanced extensions
#
#     Guests could have a favourite song, and if their favourite song is on the room’s playlist, they can cheer loudly! (return a string like “Whoo!”)
#     Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
#     Add anything extra you think would be good to have at a karaoke venue!
#
# PDA Reminder:
#
# As part of this homework you are required to take screenshots of the following:
#
# - An array in a program
# - A function that uses the array
# - The result of the function running
#
#     Go to your PDA Checklist
#
#     Submit your PDA evidence (screenshots, etc.) to your own PDA repo
#
#     PDA Reference: I.T 5
