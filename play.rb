require_relative("guest.rb")
require_relative("room.rb")
require_relative("song.rb")


guest1 = Guest.new("Arun Jaspal", 7, "Cold Water")
guest2 = Guest.new("Natasha Thottacherry", 73, "Yorktown")
guest3 = Guest.new("Mary Clare Doran", 40, "The Wizard and I")
guest4 = Guest.new("Cassia Lonsdale", 98, "Helpless")
guest5 = Guest.new("Tim Fozard", 151, "My Shot")
guest6 = Guest.new("Ryan McKay", 30, "22")
guest7 = Guest.new("Helena Jones", 70, "22")
guest8 = Guest.new("Jon Badcock", 45, "22")


room1 = Room.new([], 5, [], [], 50)
@room2 = Room.new([], 30, [], [], 150)

@song1 = Song.new("Alexander Hamilton", "Lin-Manuel Miranda")
@song2 = Song.new("My Shot", "Lin-Manuel Miranda")
@song3 = Song.new("The Schuyler Sisters", "Lin-Manuel Miranda")
@song4 = Song.new("You'll be back", "Lin-Manuel Miranda")
@song5 = Song.new("Helpless", "Lin-Manuel Miranda")
@song6 = Song.new("Satisfied", "Lin-Manuel Miranda")
@song7 = Song.new("Cold Water", "Justin Bieber")
@song8 = Song.new("22", "Taylor Swift")



p guest2.speak
# room1.check_in(guest1)
# room1.check_in(guest2)
# room1.check_in(guest3)
# room1.check_in(guest4)
# room1.check_in(guest5)
# room1.check_in(guest6)
# #
# # p room1.guests
# # room1.check_in(guest2)
# # room1.check_in(guest6)
# # p room1.check_in(guest3)
# # # p room1.guests.length
#
# room1.check_in(guest1)
# p room1.check_in(guest3)
