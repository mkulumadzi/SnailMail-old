# Gemfile

require "rubygems"
require "sinatra"
require "haml"
require "couchrest_model"
require "snailmail"

set :run, false
set :raise_errors, true

run Sinatra::Application
