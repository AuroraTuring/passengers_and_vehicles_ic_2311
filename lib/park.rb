class Park
  attr_reader :name, :admission_price, :vehicles, :visitors, :revenue

  def initialize (name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    visitors = []
    revenue = 0
  end

  def add_vehicle(vehicle)
    vehicle.passengers.each do |passenger|
      @visitors << passenger
      @revenue += admission_price if passenger.adult?
    end
    
    @vehicles << vehicle
  end

  def visitors
    @vehicles.flat_map do |vehicle|
      vehicle.passengers
    end
  end
    # all_passengers = []
    # @vehicles. do |vehicle|
    #   vehicle.passengers.each do |passenger| 
    #     all passengrs << passenger
    #   end
    all_passengers
    # end

    

  def revenue
    adults = @vehicles.sum do |vehicle|
      vehicle.num_adults
    end
    adults * admission_price
  end
end