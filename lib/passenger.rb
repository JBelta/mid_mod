class Passenger
  attr_reader :name , :age
  def initialize(passenger_info)
    @name = passenger_info["name"]
    @age = passenger_info["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def drive
    if @age >= 18
      @driver = true
    end
  end

  def driver?
    @driver
  end

end
