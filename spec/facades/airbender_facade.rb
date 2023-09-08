require "rails_helper"

RSpec.describe AirbenderFacade do
  describe "search" do
    it "returns all characters of Fire Nation", :vcr do
      characters = AirbenderFacade.new.characters_by_fire_nation
      expect(characters).to be_an(Array)
    end
  end
end