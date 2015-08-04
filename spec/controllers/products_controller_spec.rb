require 'rails_helper'

describe ProductsController, :type => :controller do

	before do
		@user = User.create(email: "test@test.com", password: "12345678")
		@product = Product.create(name: "bike", price: "300")	
	end

	describe "GET #index" do

		before do
			sign_in @user
			get :index, id: @user.id
		end

		it "responds with a http 200 code" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders product index successfully" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "GET #show" do

		before do
			sign_in @user
			get :index, id: @user.id
		end

		it "responds with a http 200 code" do
			get :show, id: @product.id
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
	
end