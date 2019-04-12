require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Reach")
    @song2 = Song.new("She's so lovely")
    @song3 = Song.new("Year 3000")
  end

  def test_song_has_a_title
    assert_equal("Reach", @song1.title)
  end





end
