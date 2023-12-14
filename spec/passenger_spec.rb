require "pry"
require "rspec"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe "#passenger" do 
    it "has attributes" do 
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
      expect(@charlie.adult?).to be(true)
      expect(@taylor.adult?).to be(false)
      expect(@charlie.driver?).to be(false)

      @charlie.drive 

      expect(@charlie.driver?).to be(true)
      
    end
  end



end


