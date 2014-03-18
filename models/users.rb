require 'couchrest_model'

class User < CouchRest::Model::Base

	use_database 'snailmail'
	property :name, string
	property :address1, string
	property :city, string
	property :state, string
	property :zip, string
	
end
