require './lib/passenger'

class Vehicle
  attr_reader :year, :make, :model
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @mph = 0
    @passengers = []
  end

  def speeding?
    @mph >= 60
  end

  def speed
    @mph += 60
  end

  def passengers
    @passengers
  end

  def add_passenger(name)
    @passengers << name
  end
end
