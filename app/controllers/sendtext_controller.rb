class SendtextController < ApplicationController
  def index
	end
	 
	def send_text_message
	  number_to_send_to = params[:number_to_send_to]
		twilio_sid = "ACedfb08c8d4d265990a4ab42477e2e52a"
		twilio_token = "e7bd7f97aa4b0858d8c5bd09732d2511"
		twilio_phone_number = "8128644782"
	 
		@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
		@twilio_client.account.sms.messages.create(
			:from => "+1#{twilio_phone_number}",
			:to => number_to_send_to,
			:body => "This is an message. It gets sent to #{number_to_send_to}"
		)
		render :nothing => true
	end
 

end
