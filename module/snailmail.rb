# load path
lib_path = File.expand_path('../', __FILE__)
($:.unshift lib_path) unless ($:.include? lib_path)

Bundler.require(:default)

Mongoid.load!('config/mongoid.yml')

require 'models/user'
require 'models/message'
require 'services/user_service'

module SnailMail
end
