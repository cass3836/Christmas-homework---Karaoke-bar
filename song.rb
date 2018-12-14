require_relative("guest.rb")
require_relative("room.rb")

class Song

attr_reader :title, :artist

def initialize(title, artist)
  @title = title
  @artist = artist
end

end
