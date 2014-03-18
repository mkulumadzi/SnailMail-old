# Gemfile

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "couchrest_model"
require "snailmail"

set :run, false
set :raise_errors, true

run Sinatra::Application
