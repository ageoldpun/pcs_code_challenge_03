# test/test_helper.rb

ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
#require 'capybara'
require '../app.rb'
=begin
class CapybaraTestCase < MiniTest::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
=end