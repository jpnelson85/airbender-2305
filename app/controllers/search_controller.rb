class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.new.characters_by_fire_nation
  end
end