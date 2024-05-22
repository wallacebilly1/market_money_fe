require 'rails_helper'

RSpec.describe 'Vendors Show Page', type: :feature do
  describe "When a user visits a vendors show page" do
    it "They see that vendor's name, contact information, whether they accept credit, and a description of what they sell", :vcr do
      visit vendor_path(55823)

      expect(page).to have_content("The Charcuterie Corner")

      within "#contact-info" do
        expect(page).to have_content("Name: Claudie Langworth III")
        expect(page).to have_content("Phone: 1-147-179-9747")
      end

      expect(page).to have_content("Credit Accepted: false")
      expect(page).to have_content("Description: Vendor selling a variety of artisanal cured meats and sausages.")
    end
  end
end