require 'minitest/autorun'
require 'minitest/pride'
require './lib/Passenger'

class PassengerTest < Minitest::Test

  def test_it_exist
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    assert_instance_of Passenger, charlie
    assert_instance_of Passenger, taylor
  end
end
