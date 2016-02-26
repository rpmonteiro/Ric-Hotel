class Hotel
  
  def initialize(rooms)
    @rooms = rooms
  end

  def number_of_rooms
    @rooms.size
  end

  def max_capacity
    total = 0
    @rooms.each do |room|
      total += room.max_occupancy
    end
    return total
  end

end