class Photograph
  attr_reader :id
  def initialize(info)
    @info = info
    @id = 1
    @museum_id = info[:museum_id]
  end
end
