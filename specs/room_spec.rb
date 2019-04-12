require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("James", 20.00)
    @room1 = Room.new("Disco", 10)
    @room2 = Room.new("Rock", 5)
  end

  def test_room_has_a_name
    assert_equal("Disco", @room1.name)
  end

  def test_room_has_a_capacity
    assert_equal(5, @room2.room_capacity)
  end

  def test_guest_check_in
    @room.guest_check_in(@guest1)
    assert_equal(1, @guests.length)
  end


end
