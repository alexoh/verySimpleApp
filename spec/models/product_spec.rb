require 'rails_helper'

describe Product do

	before(:all) { @product = Product.new(name: "Amazingwheels", colour: "sparkling-pink", price: "500000")}
	
	context "only name present" do

		it "returns product name" do
		expect(@product.name).to eq "Amazingwheels" 
		end
	end

	context "name, colour, price present" do
		it "returns name" do
			expect(@product.name).to eq "Amazingwheels"
		end

		it "returns colour" do
			expect(@product.colour).to eq "sparkling-pink"
		end

		it "returns price" do
			expect(@product.price).to eq "500000"
		end

	end

	context "product counter displays correct number of products" do

		before do
			@counter = Product.count
		end

		it "finds counter to exist" do
			Counter.exists?.should be_true
		end

		it "returns correct number of products" do
			expect(@counter).to eq "1"
		end
	end
end


# look up in schema.rb

# @comment = comment.new erstellen, ein wichtiger Bestandteil, es muss zu einem Product gehören.
# Existiert der Comment? 

# HIER GEHT ES UM DIE DATENBANK

# test-driven development - zuerst den Test schreiben, dann den Code
