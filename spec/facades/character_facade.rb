require "rails_helper"

RSpec.describe CharacterFacade do
  describe "search" do
    it "returns all characters of Fire Nation", :vcr do
      characters = CharacterFacade.new.characters_by_fire_nation
      expect(characters).to be_an(Array)
    end
  end
end