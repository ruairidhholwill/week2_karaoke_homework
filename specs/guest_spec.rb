require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("James", 20.00)
    @guest2 = Guest.new("Alice", 10.00)
    @guest3 = Guest.new("Lily", 30.00)
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

end
