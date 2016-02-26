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

  def test_available_rooms
    result = @setup.all_rooms
    assert_equal(result, @setup.hotel.rooms_available)

    @setup.hotel.occupy_room(@room1)
    result2 = [@setup.room1, @setup.room2, @setup.room3, @setup.room4, @setup.room5, @setup.room6, @setup.room7, @setup.room8, @setup.room9, @setup.room10]
    assert_equal(result, @setup.hotel.rooms_available)
  end

  def test_delete_a_room
    assert_equal(true, @setup.hotel.occupy_room(@setup.room1))
    assert_equal(false, @setup.hotel.occupy_room(9))
  end

  def test_number_available_rooms_after_deletion_of_one
    @setup.hotel.occupy_room(@setup.room1)
    assert_equal(9, @setup.hotel.number_of_rooms_available)

    #Should remain the same because deleting
    #an already deleted room won't change anything
    @setup.hotel.occupy_room(@setup.room1)
    assert_equal(9, @setup.hotel.number_of_rooms_available)

    @setup.hotel.occupy_room(@setup.room2)
    assert_equal(8, @setup.hotel.number_of_rooms_available)
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

end