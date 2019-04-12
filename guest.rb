class Guest

  attr_reader :name, :wallet

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







end
