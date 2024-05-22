require 'rails_helper'

RSpec.describe 'Markets Index Page', type: :feature do
  describe "When a user visits the markets index page" do
    it 'They see all markets listed with their name, city, and state', :vcr do
      visit markets_path

      expect(page).to have_content("Markets")

      expect(page).to have_css("#markets div", count: 5)

      within ("#market-322458") do
        expect(page).to have_content("Name: 14&U Farmers' Market")
        expect(page).to have_content("City: Washington")
        expect(page).to have_content("State: District of Columbia")
        expect(page).to have_button("More Info")
      end
    end

    it 'They can click on the "More Info" link and are taken to the market show page', :vcr do
      visit markets_path

      within ("#market-322458") do
        click_on "More Info"
      end

      expect(current_path).to eq(market_path(322458))
    end
  end
end