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
    @hotel1 = Hotel.new("testHotel", @setup.all_rooms)
    @hotel2 = Hotel.new("crazyHotel", @setup.all_rooms)
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

  def test_guest_has_room
    @setup.room8.occupied = @setup.guest1

    assert_equal(true, @setup.hotel.guest_has_room?(@setup.guest1))
    assert_equal(false, @setup.hotel.guest_has_room?(@setup.guest3))
  end

  def test_guest_has_room_false
    assert_equal(false, @setup.hotel.guest_has_room?(@setup.guest7))
    assert_equal(false, @setup.hotel.guest_has_room?(@setup.guest6))
  end

  def test_occupy_room
    assert_equal(true, @setup.hotel.occupy_room(@setup.room2, @setup.guest2))
  end

  def test_occupy_room_when_its_not_available
    @hotel1.occupy_room(@setup.room1, @setup.guest1)
    assert_equal(false, @hotel1.occupy_room(@setup.room1, @setup.guest3))
  end

  def test_occupy_room_when_guest_has_another_room
    @hotel2.occupy_room(@setup.room4, @setup.guest4)
    assert_equal(false, @hotel2.occupy_room(@setup.room9, @setup.guest4))
  end

  def test_room_has_space_for_two
    assert_equal(2, @setup.hotel.room_capacity_by_type("double"))
  end

  def test_room_has_space_for_one
    assert_equal(1, @setup.hotel.room_capacity_by_type("single"))
  end

end