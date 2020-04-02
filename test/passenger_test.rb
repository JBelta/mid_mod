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

  def test_values
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    assert_equal "Charlie", charlie.name
    assert_equal 18, charlie.age
  end

  def test_is_adult
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    assert_equal true, charlie.adult?
    assert_equal false, taylor.adult?
  end
end
