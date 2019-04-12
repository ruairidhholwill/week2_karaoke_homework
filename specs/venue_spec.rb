require("minitest/autorun")
require("minitest/rg")

require_relative("../venue.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class VenueTest < MiniTest::Test

  def setup
    @venue = Venue.new("The Venue", 100)
    @guest1 = Guest.new("James", 20.00)
    @guest2 = Guest.new("Alice", 10.00)
    @guest3 = Guest.new("Lily", 30.00)
    @room2 = Room.new("Rock", 3, [@guest1, @guest2, @guest3], [@song1, @song2, @song3], 12.00)
  end

  def test_venue_has_a_name
    assert_equal("The Venue", @venue.name)
  end

  def test_venue_has_a_till
    assert_equal(100, @venue.till)
  end

  def test_take_fee_from_guest__sufficient_funds
    @venue.receive_money_for_room_fee(@guest3, @room2)
    assert_equal(18.00, @guest3.wallet)
    assert_equal(112.00, @venue.till)
  end

  def test_take_fee_from_guest__insufficient_funds
    @venue.receive_money_for_room_fee(@guest2, @room2)
    assert_equal(10.00, @guest2.wallet)
    assert_equal(100.00, @venue.till)
  end





end
