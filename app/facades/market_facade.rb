class MarketFacade  
  def initialize
  end

  def markets
    service = MarketService.new

    json = service.all_markets

    @markets = json[:data].map do |market_data|
      Market.new(market_data)
    end

    @markets[0..4]
  end
end