class VendorFacade  
  def initialize(vendor_id = '')
    @vendor_id = vendor_id
  end

  def vendor
    service = VendorService.new

    json = service.vendor(@vendor_id)

    @vendor = Vendor.new(json[:data])
  end
end