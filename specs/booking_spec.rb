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
  end

  # def test_assign_suite_to_new_guest
  #   assert_equal(" This is a test ", new_booking(@setup.hotel, "Suite"))
  # end

end