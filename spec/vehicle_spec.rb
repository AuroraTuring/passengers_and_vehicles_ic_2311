require "pry"
require "rspec"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe "#passenger" do 
    it "has attributes" do 
      expect(@vehicle).to be_an_instance_of(Vehicle)
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
      expect(@vehicle.speeding?).to be(false)

      @vehicle.speed

      expect(@vehicle.speeding?).to be(true)
      expect(@vehicle.passengers).to eq([])

      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)

      expect(@vehicle.passengers).to eq([charlie, taylor, jude])
      expect(@vehicle.num_adults).to eq(2)
    end
  end


end

