class Character
  attr_reader :id,
              :name,
              :photo,
              :enemies,
              :allies,
              :affiliation
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl] || "No Picture Available"
    @enemies = data[:enemies] || "None"
    @allies = data[:allies] || "None"
    @affiliation = data[:affiliation]
  end
end