require 'couchrest_model'

class User < CouchRest::Model::Base

	property :name,     String
	property :address1, String
	property :city,     String
	property :state,    String
	property :zip,      String

	def self.all
		user = User.new
		user.name = 'adrienne'
		user.address1 = '1411 Shady Lane Apt 1506'
		user.city = 'Bedford'
		user.state = 'TX'
		user.zip = '76021'
		[user]
	end

end


