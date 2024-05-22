class MarketFacade  
  def initialize(market_id = '')
    @market_id = market_id
  end

  def markets
    service = MarketService.new

    json = service.all_markets

    @markets = json[:data].map do |market_data|
      Market.new(market_data)
    end

    @markets[0..4]
  end

  def market
    service = MarketService.new

    json = service.market(@market_id)

    @market = Market.new(json[:data])
  end

  def market_vendors
    service = MarketService.new

    json = service.vendors(@market_id)

    @vendors = json[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end