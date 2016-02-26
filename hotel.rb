class Hotel

  attr_reader :rooms, :name
  attr_accessor :guest_list
  def initialize(name, rooms)
    @rooms = rooms
    @name = name
    @available_rooms = rooms
  end

  def guest_list()
    result = {}
    @rooms.each_with_index do |room, index|
      result["room#{index+1}".to_sym] = room.occupied
    end
    return result 
  end

  def number_of_rooms_available
    @available_rooms.size
  end

  def rooms_available
    @available_rooms
  end

  def occupy_room(room)
    if @available_rooms.delete(room) == nil
      ##insert room and person that will occupy it 
      return false
    else
      return true
    end
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

  def available_rooms()
    @rooms.size
  end

end