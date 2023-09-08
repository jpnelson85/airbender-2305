class CharacterFacade
  def characters_by_fire_nation
    
    characters = CharacterService.new.characters_by_nation("Fire Nation")
    characters.map do |character_data|
      Character.new(character_data)
    end
  end
end