class MarketService
  def conn
    conn = Faraday.new(url: "http://127.0.0.1:3000/api/v0/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_markets
    get_url("markets")
  end

  def market(market_id)
    get_url("markets/#{market_id}")
  end

  def vendors(market_id)
    get_url("markets/#{market_id}/vendors")
  end

  # need to update calls to do MarketService.vendor
  def vendor(vendor_id)
    get_url("vendors/#{vendor_id}")
  end
end