class PaymentsController < ApplicationController
	def create
		token = params[:stripeToken]
		# create charge on stripe server. This will charge the customer
		begin
			charge = Stripe::Charge.create(
				:amount => params[:productPrice],
				:currency => "usd",
				:source => token,
				:description => "New Order: #{params[:productName]} from #{params[:stripeEmail]}."
				)
		rescue Stripe::CardError => e
			# The card has been declined
		end
		@order = Order.new(:user_id => params[:userID], :product_id => params[:productID], :total => params[:productPrice])
		@order.save

	end
end





