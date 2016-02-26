require "minitest/autorun"
require "minitest/rg"
require_relative "../booking"
require_relative "../hotel"
require_relative "../room"
require_relative "../guest"
require_relative "setup"

class TestGuest < Minitest::Test

  def setup
    @setup = Setup.new
  end

  def test_guest1_has_name
    assert_equal("Ricardo", @setup.guest1.name)
  end

end