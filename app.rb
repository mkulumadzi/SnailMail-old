require_relative 'module/snailmail.rb'

enable :sessions

set :haml, {:format => :html5}

get '/' do
  haml :index
end

post '/user/new' do
  user = SnailMail::User.create!({
    username: params["username"],
    password: params["password"],
    name: params["name"],
    address1: params["address1"],
    city: params["city"],
    state: params["state"],
    zip: params["zip"]
  })
  redirect to('/user/index')
end

get '/user/new' do
  haml :'user/new'
end

get '/user/index' do
  @users = SnailMail::User.all.to_a
  haml :'user/index'
end

get '/user/:id' do
  @user = SnailMail::User.find(params[:id])
  @messages = SnailMail::Message.where(from: @user.id).to_a
  haml :'user/view'
end

get '/user/:id/message/new' do
  @user = SnailMail::User.find(params[:id])
  @users = SnailMail::User.all.to_a
  haml :'message/new'
end

post '/user/:id/message/new' do
  @user = SnailMail::User.find(params[:id])
  #binding.pry
  
  @message = SnailMail::Message.create!({
    from: @user.id,
    to: params["to"],
    content: params["content"],
    random: (1..5).to_a.sample
  })
  redirect to("user/#{@user.id}")
end

get '/login' do
  haml :login
end

# post '/login' do
  
# end
