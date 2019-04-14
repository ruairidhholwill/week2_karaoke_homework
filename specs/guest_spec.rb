require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../room.rb")


class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("James", 20.00)
    @guest2 = Guest.new("Alice", 10.00)
    @guest3 = Guest.new("Lily", 30.00)
    @room2 = Room.new("Rock", 3, [@guest1, @guest2, @guest3], [@song1, @song2, @song3], 12.00)
  end

  def test_guest_has_a_name
    assert_equal("Lily", @guest3.name)
  end

  def test_guest_has_a_wallet
    assert_equal(20.00, @guest1.wallet)
  end

  def test_guest_wants_to_check_in
    assert_equal(true, @guest1.guest_wants_to_check_in)
  end

  def test_guest_wants_to_check_out
    assert_equal(true, @guest2.guest_wants_to_check_out)
  end

  def test_enough_money_to_enter_room__sufficient_funds
    result = @guest3.enough_money_to_enter_room?(@room2)
    assert_equal(true, result)
  end

  def test_enough_money_to_enter_room__insufficient_funds
    result = @guest2.enough_money_to_enter_room?(@room2)
    assert_equal(false, result)
  end

end
