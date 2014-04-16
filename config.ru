# Gemfile

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "mongoid"
require "pry"
require File.dirname(__FILE__) + '/app.rb'

set :run, false
set :raise_errors, true

run Sinatra::Application
