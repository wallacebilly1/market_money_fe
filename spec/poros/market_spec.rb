require "rails_helper"

RSpec.describe Market do
  before(:each) do
    @market_attr = {
      :id=>"322458",
      :type=>"market",
      :attributes=> {
        :name=>"14&U Farmers' Market",
        :street=>"1400 U Street NW ",
        :city=>"Washington",
        :county=>"District of Columbia",
        :state=>"District of Columbia",
        :zip=>"20009",
        :lat=>"38.9169984",
        :lon=>"-77.0320505",
        :vendor_count=>1
      }
    }

    @market = Market.new(@market_attr)
  end

  it "exists" do
    expect(@market).to be_a Market
    expect(@market.id).to eq( "322458")
    expect(@market.name).to eq("14&U Farmers' Market")
    expect(@market.street).to eq("1400 U Street NW ")
    expect(@market.city).to eq("Washington")
    expect(@market.county).to eq("District of Columbia")
    expect(@market.state).to eq("District of Columbia")
    expect(@market.zip).to eq("20009")
    expect(@market.lat).to eq("38.9169984")
    expect(@market.lon).to eq("-77.0320505")
    expect(@market.vendor_count).to eq(1)
  end

  it 'formats an address' do
    expect(@market.address).to eq("1400 U Street NW  Washington, District of Columbia 20009")
  end
end