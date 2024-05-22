require 'rails_helper'

RSpec.describe MarketFacade do
  it 'exists', :vcr do
    facade = MarketFacade.new

    expect(facade).to be_a(MarketFacade)
  end

  it 'returns an array of market objects', :vcr do
    facade = MarketFacade.new

    expect(facade.markets).to be_an(Array)

    facade.markets.each do |market|
      expect(market).to be_a(Market)
    end
  end

  it 'returns a market object', :vcr do
    facade = MarketFacade.new(322458)
    
    expect(facade.market).to be_a(Market)
  end
end
