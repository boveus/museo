class Photograph
  attr_reader :id,
              :artist_id,
              :museum_id,
              :name,
              :year

  def initialize(info)
    @info = info
    @id = 1
    @artist_id = info[:artist_id]
    @museum_id = info[:museum_id]
    @name = info[:name]
    @year = info[:year]
  end
end
