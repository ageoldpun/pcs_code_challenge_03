# test/test_helper.rb

ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'

require '../app.rb'