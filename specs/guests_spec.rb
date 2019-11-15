require('minitest/autorun')
require('minitest/reporters')
require_relative('../guests')

Minitest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestGuests < Minitest::Test

  def setup
    @guest = Guest.new("Jeb", "Black Betty", 50)
  end

end
