# test/test.rb

require './test_helper.rb'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_post
    post '/'
    assert last_response.ok?
    assert_equal "Caught a post", last_response.body
  end

  def test_index_loads_layout
    get '/'
    assert last_response.ok?
    assert last_response.body.include?("This is a layout")
  end

  def test_thanks_page_exists
    get '/thanks'
    assert last_response.ok?
  end

  def test_thanks_loads_layout
    get '/thanks'
    assert last_response.ok?
    assert last_response.body.include?("This is a layout")
  end

  def test_suckers_page_exists
    get '/suckers'
    assert last_response.ok?
  end

  def test_suckers_loads_layout
    get '/suckers'
    assert last_response.ok?
    assert last_response.body.include?("This is a layout")
  end
end





