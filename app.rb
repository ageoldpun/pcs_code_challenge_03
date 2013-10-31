# app.rb
require 'sinatra'
require 'pry'
enable :sessions

get '/' do
  erb :index
end

post '/' do
  session[:form_input] = [] unless session[:form_input]
  session[:form_input] << { fullname: params[:fullname],
                            email: params[:email],
                            twitter: params[:twitter] }
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

get '/detail/:index' do
  erb :detail, locals: { "index" => params[:index] }
end
