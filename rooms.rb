class Room

  attr_reader :genre, :price, :capacity
  attr_accessor :guestlist, :playlist

  def initialize(genre, price, playlist, capacity)
    @genre = genre
    @price = price
    @playlist = playlist
    @guestlist = []
    @capacity = capacity
  end

  def add_song(song)
    @playlist.push(song)
  end

  def check_in_guest(guest)
    @guestlist.push(guest)
    guest.check_favourite(@playlist)
    guest.cash -= @price
    guest.current_room = @genre
  end

  def check_out_guest(guest)
    @guestlist.delete(guest)
    guest.current_room = nil
  end

  def capacity_check(guest)
    if guestlist.length <= capacity
      then check_in_guest(guest)
      return true
    else
      return "Sorry it's full"
      return false
    end
  end

  def request_entry_fee(guest)
    if guest.pay_entry(@price) == @price
      capacity_check(guest)
    end
  end



end
