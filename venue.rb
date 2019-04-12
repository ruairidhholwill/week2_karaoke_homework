class Venue

attr_reader :name
attr_accessor :till

  def initialize(name, till)
    @name = name
    @till = till
  end

  def receive_money_for_room_fee(guest, room)
    if guest.enough_money_to_enter_room?(room) && room.check_still_capacity_available(guest)
      guest.wallet -= room.entry_fee
      @till += room.entry_fee
    else
      return "Sorry, not today."
    end
  end







end
