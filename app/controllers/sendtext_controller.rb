class SendtextController < ApplicationController
  def index
	end
	 
	def send_text_message
		number_to_send_to = params[:number_to_send_to]
	 
		twilio_sid = "PN3516502740c1f1bdfad4d56e7d7474e9"
		twilio_token = "e7bd7f97aa4b0858d8c5bd09732d2511"
		twilio_phone_number = "+18128644782"
	 
		@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
		@twilio_client.account.sms.messages.create(
			:from => "+1#{twilio_phone_number}",
			:to => number_to_send_to,
			:body => "This is an message. It gets sent to #{number_to_send_to}"
		)
	end
 
end
