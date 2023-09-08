require "rails_helper"

RSpec.describe Character do
  describe "initialize" do
    it "exists with attributes" do
      data = {  _id: "5cf5679a915ecad153ab68fd",
                allies: ["Ozai"],
                enemies: ["Earth Kingdom"],
                photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/7/7c/Chan.png/revision/latest?cb=20130621194747",
                name: "Chan (Fire Nation admiral)",
                affiliation: "Fire Nation Navy"
        }

        character = Character.new(data)

        expect(character).to be_a(Character)
        expect(character.id).to eq("5cf5679a915ecad153ab68fd")
        expect(character.name).to eq("Chan (Fire Nation admiral)")
        expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/7/7c/Chan.png/revision/latest?cb=20130621194747")
        expect(character.enemies).to eq(["Earth Kingdom"])
        expect(character.allies).to eq(["Ozai"])
        expect(character.affiliation).to eq("Fire Nation Navy")
    end
  end
end