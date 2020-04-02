require 'minitest/autorun'
require 'minitest/pride'
require './lib/passenger'
require './lib/vehicle'

class VehicleTest < Minitest::Test

  def test_it_exist
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_instance_of Vehicle, vehicle
    assert_equal "2001", vehicle.year
    assert_equal "Honda", vehicle.make
    assert_equal "Civic", vehicle.model
  end
end
