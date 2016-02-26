require "minitest/autorun"
require "minitest/rg"
require_relative "../booking"
require_relative "../hotel"
require_relative "../room"
require_relative "../guest"
require_relative "setup"

class TestRooms < Minitest::Test

  def setup
    @setup = Setup.new
  end

  def test_room1_max_occupancy
    assert_equal(4, @setup.room1.max_occupancy)
  end

  def test_room2_price
    assert_equal(10, @setup.room2.price_per_night)
  end

end