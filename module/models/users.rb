require 'couchrest_model'

class User < CouchRest::Model::Base

	use_database 'snailmail'
	property :name,     String
	property :address1, String
	property :city,     String
	property :state,    String
	property :zip,      String

	def self.all
		[
			{
				:name => 'adrienne',
				:address1 => '1411 Shady Lane Apt 1506',
				:city => 'Bedford',
				:state => 'TX',
				:zip => '76021'
			}
		]
	end

end
