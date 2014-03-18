require 'sinatra'

set :haml, {:format => :html5}

get '/' do

  haml :index

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
