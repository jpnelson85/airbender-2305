class SearchController < ApplicationController
  def index
    @characters = AirbenderFacade.new.characters_by_fire_nation
  end
end