require "rails_helper"

RSpec.describe AirbenderService do
  describe "all_characters" do
    it "returns all characters", :vcr do
      airbender_service = AirbenderService.new

      characters = airbender_service.characters_by_nation("Fire Nation")

      expect(characters).to be_an(Array)
      expect(characters.count).to eq(20)
      expect(characters.first).to have_key(:_id)
      expect(characters.first[:_id]).to be_a(String)
      expect(characters.first).to have_key(:allies)
      expect(characters.first[:allies]).to be_an(Array)
      expect(characters.first).to have_key(:enemies)
      expect(characters.first[:enemies]).to be_an(Array)
      expect(characters.first).to have_key(:photoUrl)
      expect(characters.first[:photoUrl]).to be_a(String)
      expect(characters.first).to have_key(:name)
      expect(characters.first[:name]).to be_a(String)
      expect(characters.first).to have_key(:affiliation)
      expect(characters.first[:affiliation]).to be_a(String)
    end
  end
end