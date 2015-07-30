require 'rails_helper'

describe Order do
	
	context "user_id" do
		before {@order = Order.new(user_id: "2")}

		it "should return the user id" do
			expect(@order.user_id).to eq(2)
		end
	end
	
end