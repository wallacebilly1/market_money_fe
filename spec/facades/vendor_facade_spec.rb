require 'rails_helper'

RSpec.describe VendorFacade do
  it 'exists', :vcr do
    facade = VendorFacade.new

    expect(facade).to be_a(VendorFacade)
  end

  it 'returns a vendor object', :vcr do
    facade = VendorFacade.new(55823)
    
    expect(facade.vendor).to be_a(Vendor)
  end
end
