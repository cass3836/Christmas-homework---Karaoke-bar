require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

def setup
  @guest1 = Guest.new("Arun Jaspal", 7, "Cold Water")
  @guest2 = Guest.new("Natasha Thottacherry", 73, "Yorktown")
  @guest3 = Guest.new("Mary Clare Doran", 40, "The Wizard and I")
  @guest4 = Guest.new("Cassia Lonsdale", 98, "Helpless")
  @guest5 = Guest.new("Tim Fozard", 151, "My Shot")
  @guest6 = Guest.new("Ryan McKay", 30, "22")
  @guest7 = Guest.new("Helena Jones", 70, "22")
  @guest8 = Guest.new("Jon Badcock", 45, "22")

  @room1 = Room.new([], 5, [], [], 50)
  @room2 = Room.new([], 30, [], [], 150)

  @song1 = Song.new("Alexander Hamilton", "Lin-Manuel Miranda")
  @song2 = Song.new("My Shot", "Lin-Manuel Miranda")
  @song3 = Song.new("The Schuyler Sisters", "Lin-Manuel Miranda")
  @song4 = Song.new("You'll be back", "Lin-Manuel Miranda")
  @song5 = Song.new("Helpless", "Lin-Manuel Miranda")
  @song6 = Song.new("Satisfied", "Lin-Manuel Miranda")
  @song7 = Song.new("Cold Water", "Justin Bieber")
  @song8 = Song.new("22", "Taylor Swift")
  @song9 = Song.new("Yorktown", "Lin-Manuel Miranda")
end

def test_get_song_arr
  assert_equal([], @room1.song_arr)
end

def test_get_capacity
  assert_equal(5, @room1.capacity)
end

def test_get_guests
  assert_equal([], @room1.guests)
end

def test_get_song_queue
  assert_equal([], @room1.song_queue)
end

def test_get_till
  assert_equal(50, @room1.till)
end

def test_check_in__1
  assert_equal("Guest cannot be checked in.", @room1.check_in(@guest1))
end

def test_check_in__2
  @room1.check_in(@guest1)
  assert_equal([], @room1.guests)
end

def test_favourite_song__1
  @room1.add_song_to_room(@song9)
  @room1.check_in(@guest2)
  assert_equal([@guest2], @room1.guests)
  assert_equal("Yay, my favourite song!", @room1.check_in(@guest2))
end
#

def test_favourite_song__2
  @room1.add_song_to_room(@song8)
  @room1.check_in(@guest2)
  assert_equal([@guest2], @room1.guests)
  assert_equal("Alas, they don't have my favourite song.", @room1.check_in(@guest2))
end

def test_favourite_song__3
  @room2.add_song_to_room(@song4)
  @room2.add_song_to_room(@song2)
  @room2.add_song_to_room(@song5)
  @room2.add_song_to_room(@song6)
  assert_equal("Yay, my favourite song!", @room2.check_in(@guest4))
end

def test_favourite_song__4
  @room2.add_song_to_room(@song4)
  @room2.add_song_to_room(@song2)
  @room2.add_song_to_room(@song7)
  @room2.add_song_to_room(@song6)
  assert_equal("Alas, they don't have my favourite song.", @room2.check_in(@guest4))
end

def test_check_in__3
  @room2.add_song_to_room(@song4)
  @room2.add_song_to_room(@song2)
  @room2.add_song_to_room(@song7)
  @room2.add_song_to_room(@song6)
  @room2.check_in(@guest4)
  assert_equal("Guest cannot be checked in.", @room2.check_in(@guest1))
end

def test_check_in__4
  @room1.check_in(@guest2)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  assert_equal([@guest2, @guest4, @guest5], @room1.guests)
end

def test_check_in__5
  @room1.add_song_to_room(@song8)
  @room1.check_in(@guest1)
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  assert_equal("Yay, my favourite song!", @room1.check_in(@guest8))
  assert_equal([@guest2, @guest3, @guest4, @guest5, @guest8], @room1.guests)
end

def test_check_in__6
  @room1.check_in(@guest1)
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  @room1.check_in(@guest6)
  assert_equal("Guest cannot be checked in.", @room1.check_in(@guest7))
end

def test_check_in__7
  @room1.check_in(@guest1)
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  @room1.check_in(@guest6)
  @room1.check_in(@guest7)
  assert_equal([@guest2, @guest3, @guest4, @guest5, @guest6], @room1.guests)
end

def test_check_in__8
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  @room1.check_in(@guest6)
  assert_equal("Guest cannot be checked in.", @room1.check_in(@guest7))
end

def test_check_in__9
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  @room1.check_in(@guest6)
  @room1.check_in(@guest7)
  assert_equal([@guest2, @guest3, @guest4, @guest5, @guest6], @room1.guests)
end
#
def test_check_out__1
  @room1.check_in(@guest2)
  @room1.check_out(@guest2)
  assert_equal([], @room1.guests)
end

def test_check_out__2
  @room1.check_in(@guest2)
  @room1.check_in(@guest4)
  @room1.check_in(@guest5)
  @room1.check_out(@guest4)
  assert_equal([@guest2, @guest5], @room1.guests)
end

def test_check_out__3
  @room1.check_out(@guest3)
  assert_equal([], @room1.guests)
end

def test_check_out__4
  @room1.check_in(@guest1)
  @room1.check_in(@guest3)
  @room1.check_out(@guest3)
  assert_equal([], @room1.guests)
end

def test_check_out__5
  @room1.check_in(@guest2)
  @room1.check_in(@guest3)
  @room1.check_in(@guest4)
  @room1.check_out(@guest5)
  assert_equal([@guest2, @guest3, @guest4], @room1.guests)
end

def test_check_out__6
  @room1.check_in(@guest2)
  @room1.check_out(@guest3)
  @room1.check_out(@guest2)
  assert_equal([], @room1.guests)
end

def test_add_song_to_room__1
  @room2.add_song_to_room(@song1)
  @room2.add_song_to_room(@song5)
  @room2.add_song_to_room(@song3)
  assert_equal([@song1, @song5, @song3], @room2.song_arr)
end

def test_add_song_to_room__2
  @room2.add_song_to_room(@song1)
  @room2.add_song_to_room(@song5)
  @room1.add_song_to_room(@song3)
  assert_equal([@song1, @song5], @room2.song_arr)
  assert_equal([@song3], @room1.song_arr)
end



end
