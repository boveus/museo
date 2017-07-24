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

  def add_photograph(photograph)
    new_photograph = Photograph.new(photograph)
    @photographs << new_photograph
  end

  def find_museum(id, found_museum = '')
    @museums.each do |museum|
      if museum.id == id
        found_museum = museum
      end
    end
    found_museum
  end
end
