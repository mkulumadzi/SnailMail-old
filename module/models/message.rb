module SnailMail
	class Message
		include Mongoid::Document
		include Mongoid::Timestamps

		field :from, type: String
		field :to, type: String
		field :content, type: String
		field :random, type: Integer

		def self.validate(to)
			self.all.map { |message| message.to }.include?(to)
		end

	end
end

