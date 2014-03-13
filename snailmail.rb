require 'sinatra'

get '/' do
  # some stuff
  'This... is... SNAILMAIL!!!!!!!!'
end

post '/message' do
  #stuff
end

get '/messages' do
  user = params["username"]
  authkey = params["authkey"]
  #stuff
  "i am a message for #{user}"
end
