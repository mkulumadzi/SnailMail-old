require 'couchrest_model'

class Message < CouchRest::Model::Base

	use_database 'snailmail'
	property :from,           String
	property :to,             String
	property :sent,           Date
	property :deliver_after,  Date
	property :status,         String
	property :content,        String

end


