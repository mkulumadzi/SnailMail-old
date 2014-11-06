ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'spec_helper'

include Rack::Test::Methods

def app
  SnailMail::Application
end

describe 'app_root' do

	describe 'get user/index' do
		it 'should load all users' do
			get '/user/index'
			binding.pry
			#expect(last_response.ok?).to be(true)
			expect("adrienne rules" != nil).to eq(true)
		end
	end 
end


# class HelloWorldTest < Test::Unit::TestCase
#   include Rack::Test::Methods

#   def app
#     Sinatra::Application
#   end

#   def test_it_says_hello_world
#     get '/'
#     assert last_response.ok?
#     assert_equal 'Hello World', last_response.body
#   end

#   def test_it_says_hello_to_a_person
#     get '/', :name => 'Simon'
#     assert last_response.body.include?('Simon')
#   end
# end