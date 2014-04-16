require_relative 'module/snailmail.rb'

set :haml, {:format => :html5}

get '/' do
  haml :index
end

post '/user/new' do
  user = SnailMail::User.new
  user.name = params["name"]
  user.address1 = params["address1"]
  user.city = params["city"]
  user.state = params["state"]
  user.zip = params["zip"]
  user.save! 
  redirect to('/user/index')
end

get '/user/new' do
  haml :'user/new'
end

get '/user/index' do
  @users = SnailMail::User.all.to_a
  haml :'user/index', :locals => {users: @users}
end

get '/user/:id' do
  @id = params[:id]
  @user = SnailMail::User.find(@id)
  haml :'user/view', :locals => {user: @user}
end

get '/user/:id/message/new' do
  @id = params[:id]
  @user = SnailMail::User.find(@id)
  haml :'message/new', :locals => {user: @user}
end

post '/user/:id/message/new' do
  @id = params[:id]
  user = SnailMail::User.find(@id)
  message = SnailMail::Message.new
  message.from = user.id
  message.to = params["to"]
  message.content = params["content"]
  message.save!
  haml :'/message/view', :locals => {message: message}
end

# get '/user/[id]/message/new' do
#   haml :'message/new'
# end

# get '/messages' do
#   user = params["username"]
#   authkey = params["authkey"]
#   "i am a message for #{user}"
# end
