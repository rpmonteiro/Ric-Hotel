require "minitest/autorun"
require "minitest/rg"
require_relative "../booking"
require_relative "../hotel"
require_relative "../room"
require_relative "../guest"
require_relative "setup"

class TestHotel < Minitest::Test

  def setup
    @setup = Setup.new
  end

  def test_hotel_has_ten_rooms
    assert_equal(10, @setup.hotel.number_of_rooms)
  end

  def test_hotel_max_capacity
    assert_equal(21, @setup.hotel.max_capacity)
  end

  def test_guest_list
    result = {:room1=>false, :room2=>false, :room3=>false, :room4=>false, :room5=>false, :room6=>false, :room7=>false, :room8=>false, :room9=>false, :room10=>false}
    assert_equal(result, @setup.hotel.guest_list)
  end

  def test_is_occupied?  
    assert_equal(false, @setup.hotel.is_occupied?(@setup.room1))
  end

  def test_available_rooms_by_type
    result = [@setup.room3, @setup.room4, @setup.room5, @setup.room6, @setup.room7]
    assert_equal(result, @setup.hotel.available_rooms_by_type("double"))
  end

  def test_guest_already_has_room
    @setup.room1.occupied = @setup.guest1
    assert_equal(true, @setup.hotel.guest_has_room?(@setup.guest1))
    assert_equal(false, @setup.hotel.guest_has_room?(@setup.guest2))
  end

  def test_occupy_room
    assert_equal(true, @setup.hotel.occupy_room(@setup.room2, @setup.guest5))
  end

  def test_occupy_room_when_its_not_available
    @setup.hotel.occupy_room(@setup.room1, @setup.guest1)
    assert_equal(false, @setup.hotel.occupy_room(@setup.room1, @setup.guest1))
  end

  def test_occupy_room_when_guest_has_another_room
    @setup.hotel.occupy_room(@setup.room1, @setup.guest1)
    assert_equal(false, @setup.hotel.occupy_room(@setup.room2, @setup.guest1))
  end



end