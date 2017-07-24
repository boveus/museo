require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test
  def test_curator_has_no_artists_by_default
    curator = Curator.new
    assert_equal [], curator.artists
  end
  def test_curator_has_no_museums_by_default
    curator = Curator.new
    assert_equal [], curator.museums
  end
  def test_curator_has_nophotographs_by_default
    curator = Curator.new
    assert_equal [], curator.photographs
  end
  def test_curator_can_add_museum
    curator = Curator.new
    curator.add_museum({id: 1, name: "MoMA"})
    assert_instance_of Museum, curator.museums.first
    assert_equal 1, curator.museums.count
    assert_equal 1, curator.museums.first.id
  end
  def test_curator_can_add_artist
    curator = Curator.new
    curator.add_artist({id: 1, name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_instance_of Artist, curator.artists.first
    assert_equal 1, curator.artists.count
    assert_equal 1, curator.artists.first.id
  end
  def test_Curator_can_add_photograph
    curator = Curator.new
    curator.add_photograph({id: 1, name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_instance_of Photograph, curator.photographs.first
    assert_equal 1, curator.photographs.count
    assert_equal 1, curator.photographs.first.id
  end
end
