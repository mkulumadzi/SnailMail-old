require_relative 'module/snailmail.rb'

set :haml, {:format => :html5}

get '/' do
  haml :index
end

post '/user' do
  user = User.new
  user.name = params["user"]["name"]
  user.save 
  "holler"
end

get '/user' do
  haml :user
end

get '/users' do
  @list_of_users = UserService.list_users
  haml :users
end

post '/message' do
  #stuff
end

get '/messages' do
  user = params["username"]
  authkey = params["authkey"]
  "i am a message for #{user}"
end
