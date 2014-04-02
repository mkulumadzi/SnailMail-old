# Gemfile

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "couchrest_model"
require "pry"
require File.dirname(__FILE__) + '/app.rb'

set :run, false
set :raise_errors, true

run Sinatra::Application
