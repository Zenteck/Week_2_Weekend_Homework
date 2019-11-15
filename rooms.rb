class Room

  attr_reader :genre, :price, :capacity
  attr_accessor :guestlist, :playlist

  def initialize(genre, price, playlist)
    @genre = genre
    @price = price
    @playlist = playlist
    @guestlist = []
  end

end
