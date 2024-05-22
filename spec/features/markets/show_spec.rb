require 'rails_helper'

RSpec.describe 'Markets Show Page', type: :feature do
  describe "When a user visits a market show page" do
    it "They see that market's name and address", :vcr do
      visit market_path(322458)

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("Address: ")
    end

    it "They see a list of all vendors at that market with links to that vendors show page", :vcr do
      visit market_path(322458)

      expect(page).to have_css("#vendors div", between: 0..20)

      within ("#vendor-55823") do
        expect(page).to have_link("The Charcuterie Corner")
      end

      click_on "The Charcuterie Corner"

      expect(current_path).to eq(vendor_path(55823))
    end
  end
end