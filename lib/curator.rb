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
    new_museum = Museum.new(museum)
    @museums << new_museum
  end
  def add_artist(artist)
    new_artist = Artist.new(artist)
    @artists << new_artist
  end
end
