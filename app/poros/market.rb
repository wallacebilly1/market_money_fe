class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lat,
              :lon

  def initialize(market_data)
    @id = market_data[:id]
    @name = market_data[:attributes][:name]
    @street = market_data[:attributes][:street]
    @city = market_data[:attributes][:city]
    @county = market_data[:attributes][:county]
    @state = market_data[:attributes][:state]
    @zip = market_data[:attributes][:zip]
    @lat = market_data[:attributes][:lat]
    @lon = market_data[:attributes][:lon]
  end
end