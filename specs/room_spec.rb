require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Reach")
    @song2 = Song.new("She's so lovely")
    @song3 = Song.new("Year 3000")
    @guest1 = Guest.new("James", 20.00)
    @guest2 = Guest.new("Alice", 10.00)
    @guest3 = Guest.new("Lily", 30.00)
    @guest4 = Guest.new("James", 15.00)
    @room1 = Room.new("Disco", 5, 12.00)
    @room2 = Room.new("Rock", 3, [@guest1, @guest2, @guest3], [@song1, @song2, @song3], 12.00)
  end

  def test_room_has_a_name
    assert_equal("Disco", @room1.name)
  end

  def test_room_has_a_capacity
    assert_equal(3, @room2.room_capacity)
  end

  def test_room_has_entry_fee
    assert_equal(12.00, @room2.entry_fee)
  end

  def test_guest_check_in
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_guest_check_out
    room = Room.new("Disco", 10, [@guest1.name])
    room.remove_guest_from_room(@guest1)
    assert_equal(0, room.guests.count)
  end

  def test_add_song_by_name
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.songs.count)
  end

  def test_remove_song_by_name
    @room2.remove_song_from_playlist(@song2)
    assert_equal(2, @room2.songs.count)
  end

  def test_dont_add_song_if_already_in_playlist
    @room2.add_song_to_playlist(@song2)
    assert_equal(3, @room2.songs.count)
  end

  def test_reject_check_in_if_over_capacity
    @room2.check_still_capacity_available(@guest4)
    assert_equal(3, @room2.guests.count)
  end

  def test_accept_check_in_if_under_capacity
    @room1.check_still_capacity_available(@guest4)
    assert_equal(1, @room1.guests.count)
  end

end
