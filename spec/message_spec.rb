require 'spec_helper'

describe SnailMail::Message do 
	describe '::validate_message' do
		it 'should validate that message exists' do
			message = SnailMail::Message.new
			message.to = '1'
			allow(SnailMail::Message).to receive(:all).and_return([message])

			to = '1'
			is_valid = SnailMail::Message::validate(to)
			expect(is_valid).to be(true)
		end
	end
	# describe '::validate_saved_message' do
	# 	it 'should validate that a message was saved with a real user' do
	# 	#
	# 	end
	# end
end