require_relative("room.rb")
require_relative("song.rb")

class Guest

attr_accessor :name, :purse, :fav_song

def initialize(name, purse, fav_song)
  @name = name
  @purse = purse
  @fav_song = fav_song
end

def pay_entry
  if @purse >= 10
  @purse -= 10
  end
end

# def speak(song_arr)
#   for song in song_arr
#     if song.title == @fav_song
#       "Yay, my favourite song!"
#     else
#       return "Alas, they do not have my favourite song."
#     end
#   end
# end

def celebrate
  return "Yay, my favourite song!"
end

def commiserate
  return "Alas, they don't have my favourite song."
end



end
