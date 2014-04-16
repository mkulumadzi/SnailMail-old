module SnailMail
	class User
		include Mongoid::Document
		include Mongoid::Timestamps

		field :name, type: String
		field :address1, type: String
		field :city, type: String
		field :state, type: String
		field :zip, type: String

	end
end

