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
  end

  def test_delete_a_room
    assert_equal(true, @setup.hotel.occupy_room(@setup.room1))
    assert_equal(false, @setup.hotel.occupy_room(9))
  end

end