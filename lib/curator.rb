class Curator
  attr_reader   :artists,
                :museums,
                :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end
end
