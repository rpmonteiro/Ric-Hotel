require_relative('../room')

class Setup

  attr_accessor :room1, :room2, :room3, :room4, :room5, :room6, :room7, :room8, :room9, :room10, :hotel 

  def initialize

  single = {
    type: "Single",
    price_per_night: 80,
    max_occupancy: 1
  }

  double = {
    type: "Double",
    price_per_night: 100,
    max_occupancy: 2
  }

  junior_suite = {
    type: "Junior Suite",
    price_per_night: 130,
    max_occupancy: 4
  }

  suite = {
    type: "Suite",
    price_per_night: 180,
    max_occupancy: 4
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

  @hotel = Hotel.new(@all_rooms)

  end

end