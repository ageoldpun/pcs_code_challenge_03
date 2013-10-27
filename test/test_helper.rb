# test/test_helper.rb

ENV['RACK_ENV'] = 'test'
gem 'minitest'
require 'minitest/autorun'
require 'rack/test'
require '../app.rb'
