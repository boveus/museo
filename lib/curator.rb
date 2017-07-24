class Curator
  attr_reader   :artists,
                :museums,
                :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end
  def add_museum(museum)
    added_museum = Museum.new(museum)
    @museums << added_museum
  end
end
