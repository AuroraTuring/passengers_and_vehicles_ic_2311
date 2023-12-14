require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"



RSpec.describe Park do
  it "exists" do 
    park = Park.new ("RMNP", 25)

    expect(park).to be_an_instance_of(Park)
  end

  it "has attributes" do 
    park = Park.new ("RMNP", 25)

    expect(park.name).to eq("RMNP")
    expect(park.admission_price).to eq(25)
  end

  it "can add vehicles" do
    
  end

  it "can calculate revenue" do

  end





end