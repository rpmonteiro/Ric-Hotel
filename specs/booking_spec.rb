require "minitest/autorun"
require "minitest/rg"
require_relative "../booking"
require_relative "../hotel"
require_relative "../room"
require_relative "../guest"
require_relative "setup"

class TestBooking < Minitest::Test

  def setup
    @setup = Setup.new
    @booking2 = Booking.new(@setup.hotel, @setup.guest2, "Double")
    @booking3 = Booking.new(@setup.hotel, @setup.guest1, "Suite")
    @booking4 = Booking.new(@setup.hotel, @setup.guest5, "Single")
  end

  def test_guest_can_make_booking
    assert_equal(true, @booking2.new_booking)
  end

end