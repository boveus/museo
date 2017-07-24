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
  curator.add_museum({name: "MoMA"})
  assert_equal 1, curator.museums.count
  end
end
