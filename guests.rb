class Guest

  attr_reader :name, :fav_song
  attr_accessor :cash, :current_room

  def initialize(name, fav_song, cash)
    @name = name
    @fav_song = fav_song
    @cash = cash
    @current_room = current_room
  end

  def pay_entry(price)
    if @cash >= price
      #Deducting the money was here, but I realised the capacity check could yet fail.
      return price
    end
  end

  def check_favourite(playlist)
    if playlist.include?(@fav_song)
      return "Awesome!"
    else
      return "I hate kareoke."
    end
  end



end
