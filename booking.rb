class Booking

  def initialize(hotel, guest, room_type)
    @hotel = hotel
    @guest = guest
    @room_type = room_type
  end

  def new_booking(hotel, type_requested)
    #check if there's a free room of that type
    #if true then put that person in the room, in the occupied key
    #call the occupy function to remove that room from the available list
    #return true
    #else return false
    
    available_rooms = hotel.available_rooms_by_type(type_requested)
      
    if available_rooms != []
      
    end
    

  end

end