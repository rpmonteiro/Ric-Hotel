class Hotel

  attr_reader :rooms, :name
  attr_accessor :guest_list
  def initialize(name, rooms)
    @rooms = rooms
    @name = name
    @available_rooms = rooms.clone
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

  def guest_has_room?(guest)
    @rooms.any?{|room| room.occupied == guest}
  end

  def occupy_room(room, guest)
    if @available_rooms.include?(room) && (guest_has_room?(guest)) == false
      @rooms.find{|i| i == room}.occupied = guest
      @available_rooms.delete(room)
      return true
    else
      return false
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

  def is_occupied?(room)
    @available_rooms.include?(room) ? false : true
  end

  def available_rooms_by_type(type)
    same_type = []
    available = []

    @available_rooms.each do |room|
      same_type << room if room.type == type.downcase
    end

    same_type.each do |room|
      available << room if room.occupied == false
    end

    return available
  end

end