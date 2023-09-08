require "rails_helper"

RSpec.describe "As a user" do
  describe "When I visit the root page" do
    it "I can search for members of the Fire Nation", :vcr do
      visit root_path

      select "Fire Nation", from: :nation

      click_on "Search For Members"

      expect(current_path).to eq(search_path)
save_and_open_page
      # expect(page).to have_content("100 Members")
      expect(page).to have_content("Name: Chan (Fire Nation admiral)")
      expect(page).to have_content("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
      expect(page).to have_content("Allies: Ozai")
      expect(page).to have_content("Enemies: Earth Kingdom")
      expect(page).to have_content("Affiliation: Fire Nation Navy")
    end
  end
end