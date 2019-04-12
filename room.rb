class Room

  attr_reader :name, :room_capacity, :entry_fee
  attr_accessor :guests, :songs

  def initialize(name, room_capacity, guests = [], songs = [], entry_fee)
    @name = name
    @room_capacity = room_capacity
    @guests = guests
    @songs = songs
    @entry_fee = entry_fee
  end

  def add_guest_to_room(guest)
    if guest.guest_wants_to_check_in
      @guests.push(guest.name)
    end
    @guests.count
  end

  def remove_guest_from_room(guest)
    if guest.guest_wants_to_check_out
      @guests.delete(guest.name)
    end
    @guests.count
  end

  def add_song_to_playlist(song)
    if @songs.include?(song)
      @songs.count
    else
      @songs.push(song).count
    end
  end

  def remove_song_from_playlist(song)
    @songs.delete(song)
    @songs.count
  end

  def check_still_capacity_available(guest)
    if @guests.count < @room_capacity
      @guests.push(guest)
      @guests.count
    else
      @guests.count
    end
  end

end
