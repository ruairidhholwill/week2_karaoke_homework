class Guest

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def guest_wants_to_check_in
    return true
  end

  def guest_wants_to_check_out
    return true
  end

  def enough_money_to_enter_room?(room)
    if @wallet >= room.entry_fee
      true
    else
      false
    end
  end





end
