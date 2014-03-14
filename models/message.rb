require 'couchrest_model'

class Message < CouchRest::Model::Base

	use_database 'snailmail'
	property :id, primary_key
	property :from, string
	property :to, string
	property :sent, datetime
	property :deliver_after, datetime
	property :status, string
	property :content, string
	
end
	
	