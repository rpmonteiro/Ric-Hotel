require_relative('../room')
require_relative('../guest')
require_relative('../hotel')
require_relative('../restaurant')
require_relative('../booking')


class Setup

  attr_accessor :room1, :room2, :room3, :room4, :room5, :room6, :room7, :room8, :room9, :room10, :hotel, :guest1, :guest2, :guest3, :guest4, :guest5, :guest6, :guest7, :booking_1, :booking_2, :all_rooms, :all_guests

  def initialize

  single = {
    type: "Single",
    price_per_night: 80,
    max_occupancy: 1,
    occupied: false,
  }

  double = {
    type: "Double",
    price_per_night: 100,
    max_occupancy: 2,
    occupied: false
  }

  junior_suite = {
    type: "Junior Suite",
    price_per_night: 130,
    max_occupancy: 4,
    occupied: false
  }

  suite = {
    type: "Suite",
    price_per_night: 180,
    max_occupancy: 4,
    occupied: false
  }

  @room1 = Room.new(suite)
  @room2 = Room.new(junior_suite)
  @room3 = Room.new(double)
  @room4 = Room.new(double)
  @room5 = Room.new(double)
  @room6 = Room.new(double)
  @room7 = Room.new(double)
  @room8 = Room.new(single)
  @room9 = Room.new(single)
  @room10 = Room.new(single)

  @all_rooms = [@room1, @room2, @room3, @room4, @room5, @room6, @room7, @room8, @room9, @room10]

  @hotel = Hotel.new("Royal Ric Deluxe", @all_rooms)

  @guest1 = Guest.new(name: "Ricardo", roommates: 1, tab: 0)
  @guest2 = Guest.new(name: "Simon", roommates: 2, tab: 0)
  @guest3 = Guest.new(name: "Valerie", roommates: 1, tab: 0)
  @guest4 = Guest.new(name: "Rick", roommates: 0, tab: 0)
  @guest5 = Guest.new(name: "John", roommates: 0, tab: 0)
  @guest6 = Guest.new(name: "Elton", roommates: 3, tab: 0) 
  @guest7 = Guest.new(name: "Rui", roommates: 1, tab: 0) 

  @all_guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]

  @booking1 = Booking.new(@hotel1, @guest1, "Suite")

  end

end