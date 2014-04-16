module SnailMail
	class Message
		include Mongoid::Document
		include Mongoid::Timestamps

		field :from, type: String
		field :to, type: String
		field :sent, type: Date
		field :deliver_after, type: Date
		field :status, type: String
		field :content, type: String

	end
end

