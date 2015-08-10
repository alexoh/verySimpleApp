class PaymentsController < ApplicationController
	def create
		token = params[:stripeToken]
		# create charge on stripe server. This will charge the customer
		begin
			charge = Stripe::Charge.create(
				:amount => params[:ProductPrice],
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail] # How do I pass on multiple information using params ?
				)
		rescue Stripe::CardError => e
			# The card has been declined
		end
	end
end


