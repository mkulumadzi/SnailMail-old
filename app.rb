require 'sinatra'
require_relative 'module/snailmail.rb'

set :haml, {:format => :html5}

get '/' do
  haml :index
end

get '/user' do

  haml :user

end

get '/users' do

end

post '/message' do
  #stuff
end

get '/messages' do
  user = params["username"]
  authkey = params["authkey"]
  "i am a message for #{user}"
end
