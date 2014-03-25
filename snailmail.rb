require 'sinatra'

set :haml, {:format => :html5}

get '/' do

  haml :index

end

get '/user' do

  haml :user

end

get '/users' do
  
  #User.all.each do |user|
  #  puts "User: #{user.name}"
  #end

  user_id = params["id"]

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
