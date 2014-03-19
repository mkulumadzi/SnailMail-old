require 'sinatra'
require_relative 'module/snailmail.rb'

set :haml, {:format => :html5}

get '/' do
  haml :index
end

post '/user' do
  #stuff
end

get '/users' do
  User.all.to_json
end

post '/message' do
  #stuff
end

get '/messages' do
  user = params["username"]
  authkey = params["authkey"]
  "i am a message for #{user}"
end
