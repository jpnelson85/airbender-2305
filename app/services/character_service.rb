class CharacterService

  def characters_by_nation(nation)
    get_url("/api/v1/characters?affiliation=#{nation}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn 
    Faraday.new(url: "https://last-airbender-api.fly.dev") do |f|
    end
  end
end