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

end