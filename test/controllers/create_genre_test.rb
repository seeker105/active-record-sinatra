require './test/test_helper'

class CreateGenreTest < Minitest::Test
  include Rack::Test::Methods # It alloes us to have access to methods like get, post

  def app     # def app is something that Rack::Test is looking for
    FilmFile
  end

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  def test_create_genre_with_valid_attributes
    post '/genres', {genre: {name: 'Animation'}}

    assert_equal 1, Genre.count
    assert_equal 200, last_response.status            # last_response method comes from Rack::Test::Methods module
    assert_equal "Genre Created", last_response.body  # the .status and .body methods come from Rack::Test::Methods module
  end

  def test_

  end

end
