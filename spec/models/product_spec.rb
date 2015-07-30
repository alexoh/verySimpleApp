require 'rails_helper'

describe Product do
	
	context "only name present" do

		before { @product = Product.new(name: "PewBike")}

		it "should return product name" do
		expect(@product.name).to eq "PewBike" 
		end

		it "should return price equal nil" do
			expect(@product.price).to eq nil
		end
	end

	context "name, colour, price present" do
		# To see whether you can stack multiple tests into one routine:

		before { @product = Product.new(name: "Amazingwheels", colour: "sparkling-pink", price: "500000")}

		it "should return name" do
			expect(@product.name).to eq "Amazingwheels"
		end

		it "should return colour" do
			expect(@product.colour).to eq "sparkling-pink"
		end

		it "should return price" do
			expect(@product.price).to eq "500000"
		end

		it "should return name, colour, price" do
			expect(@product.name).to eq "Amazingwheels"
			expect(@product.colour).to eq "sparkling-pink"
			expect(@product.price).to eq "500000"
		end
	end
end


# look up in schema.rb

# @comment = comment.new erstellen, ein wichtiger Bestandteil, es muss zu einem Product gehören.
# Existiert der Comment? 

# HIER GEHT ES UM DIE DATENBANK

# test-driven development - zuerst den Test schreiben, dann den Code
