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
end