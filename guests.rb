class Guest

  attr_reader :name, :fav_song
  attr_accessor :cash#,current_room

  def initialize(name, fav_song, cash)
    @name = name
    @fav_song = fav_song
    @cash = cash
    # @current_room = current_room
  end



end
