# encoding: utf-8

require "rubygems"
require 'test/unit'
require "rspec"
$LOAD_PATH << File.expand_path(File.join('..', 'module'), File.dirname(__FILE__))

Bundler.require(:default)

Mongoid.load!('config/mongoid.yml')

require 'models/user'
require 'models/message'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

__END__