require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Alexander Hamilton", "Lin-Manuel Miranda")
  end

def test_get_title
 assert_equal("Alexander Hamilton", @song1.title)
end

def test_get_artist
  assert_equal("Lin-Manuel Miranda", @song1.artist)
end


end
