require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  def setup
    @photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})
  end
  def test_create_photograph
    assert_instance_of Photograph, @photograph
  end
  def test_retrieve_id
    assert_equal 1, @photograph.id
  end
  def test_artist_id
    assert_equal 4, @photograph.artist_id
  end
  def test_museum_id
    assert_equal 2, @photograph.museum_id
  end
  def test_photograph_name
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", @photograph.name
  end
  def test_photograph_year
    assert_equal 1954, @photograph.year
  end
end
