class Room

  attr_reader :genre, :price, :capacity
  attr_accessor :guestlist, :playlist

  def initialize(genre, price, playlist, capacity)
    @genre = genre
    @price = price
    @playlist = playlist
    @guestlist = []
  end

  def add_song(song)
    @playlist.push(song)
  end

  def check_in_guest(guest)
    @guestlist.push(guest)
  end

  def check_out_guest(guest)
    @guestlist.delete(guest)
  end

end
