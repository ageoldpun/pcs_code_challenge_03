# app.rb
require 'sinatra'
require 'pry'

configure do
  @@name = 'name'
  @@email = 'email'
  @@twitter = 'twitter'
end

get '/' do
  erb :index
end

post '/' do
  @@name = params[:fullname]
  @@email = params[:email]
  @@twitter = params[:twitter]
  redirect to('/thanks')
end

get '/thanks' do
  erb :thanks
end

get '/suckers' do
  erb :suckers
end

get '/detail' do
  erb :detail
end

# link '/detail' do
#   'Return to listing'
#   erb :suckers
# end
