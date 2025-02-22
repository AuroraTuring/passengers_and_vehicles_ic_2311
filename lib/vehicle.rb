class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make 
    @model = model 
    @speeding = false 
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed 
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end 

  def num_adults
    @passengers.count do |passenger|
      passenger.adult? 
    end
    end
    # total_adults = 0
    # @passengers.each do |passenger|
    #   if passenger.adult?
    #     total_adults += 1
    #   end
    # end
    # total_adults
  end 

end