# app.rb
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

# post '/' do
#   "Caught a post" 
# end

get '/thanks' do
  erb :thanks
end

get '/suckers' do
  erb :suckers
end