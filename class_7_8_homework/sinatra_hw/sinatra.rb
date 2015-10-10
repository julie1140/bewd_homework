require 'sinatra'
require 'httparty'


get '/' do

erb :home
end

get '/new' do
  @articles=HTTParty.get "http://mashable.com/stories.json"
  erb :new
end

get '/rising' do
  @articles=HTTParty.get "http://mashable.com/stories.json"
  erb :rising
end

get '/hot' do
  @articles=HTTParty.get "http://mashable.com/stories.json"
  erb :hot
end
