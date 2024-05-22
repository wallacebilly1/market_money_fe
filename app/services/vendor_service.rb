class VendorService
  def conn
    conn = Faraday.new(url: "http://127.0.0.1:3000/api/v0/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def vendor(vendor_id)
    get_url("vendors/#{vendor_id}")
  end
end