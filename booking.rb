class Booking

  def initialize(hotel, guest, room_type)
    @hotel = hotel
    @guest = guest
    @room_type = room_type
  end

  def new_booking()
    if @hotel.rooms_available.any? {|room| room.type == @room_type.downcase} && @hotel.room_capacity_by_type(@room_type) >= @guest.roommates
      print @hotel.rooms_available.any? {|room| room.type == @room_type}
      print "       "
      print @guest.roommates
      print "       "
      print @hotel.room_capacity_by_type(@room_type)
      print "       "
      available_rooms = @hotel.rooms_available
      room_to_book = available_rooms.find {|room| room.type == @room_type}
      @hotel.occupy_room(room_to_book, @guest)
      return true
    end
    print @hotel.rooms_available.any? {|room| room.type == @room_type.downcase}
    print "       "
    print @guest.roommates
    print "       "
    print @hotel.room_capacity_by_type(@room_type)
    print "       "
    print available_rooms.find {|room| room.type == @room_type}
    return false
  end
end