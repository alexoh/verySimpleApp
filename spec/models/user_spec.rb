require 'rails_helper'

describe User do
	context "it should return first name" do
		
		before {@user = User.new(first_name: "Tom")}
		
		it "should return first name only" do
			expect(@user.first_name).to eq("Tom")
		end
	end
end