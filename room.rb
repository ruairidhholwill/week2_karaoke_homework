class Room

  attr_reader :name, :room_capacity
  attr_accessor :guests, :songs

  def initialize(name, room_capacity, guests = [], songs = [])
    @name = name
    @room_capacity = room_capacity
    @guests = guests
    @songs = songs
  end

  def guest_check_in(guest)
    if guest.guest_check_in
      @guests.push(guest)
    end
    return @guests.count
  end





end
