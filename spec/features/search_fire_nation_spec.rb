require "rails_helper"

RSpec.describe "As a user" do
  describe "When I visit the root page" do
    it "I can search for members of the Fire Nation", :vcr do
      visit root_path

      select "Fire Nation", from: :nation

      click_on "Search For Members"

      expect(current_path).to eq(search_path)
save_and_open_page
      expect(page).to have_content("20 Members")
      expect(page).to have_content("Name:Azula")
      expect(page).to have_selector("img[src='https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941']")
      expect(page).to have_content("Ozai")
      expect(page).to have_content("Iroh")
      expect(page).to have_content("Affiliation: Fire Nation Royal Family")
    end
  end
end