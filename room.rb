require_relative("guest.rb")
require_relative("song.rb")

class Room

attr_accessor :song_arr, :capacity, :guests, :song_queue, :till

  def initialize(song_arr, capacity, guests, song_queue, till)
    @song_arr = song_arr
    @capacity = capacity
    @guests = guests
    @song_queue = song_queue
    @till = till
  end

  def check_in(guest)
    if guest.pay_entry && @guests.length < @capacity
      @guests << guest
    else
      return "Guest cannot be checked in."
    end
    if @song_arr == []
      return guest.commiserate
    end
    for song in @song_arr
      if song.title == guest.fav_song
        return guest.celebrate
      end
    end
    return guest.commiserate
  end

  def check_out(guest)
    @guests -= [guest]
  end

  def add_song_to_room(song)
    @song_arr << song
  end


end
