require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestGuest < MiniTest::Test

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
end

def test_get_name
  assert_equal("Arun Jaspal", @guest1.name)
end

def test_get_purse
  assert_equal(7, @guest1.purse)
end

def test_get_fav_song
  assert_equal("Cold Water", @guest1.fav_song)
end

def test_pay_entry
  @guest2.pay_entry
  assert_equal(63, @guest2.purse)
end

def test_speak
  assert_equal("Yay, my favourite song!", @guest2.speak)
end



end
