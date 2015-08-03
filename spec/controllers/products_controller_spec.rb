require 'rails_helper'

describe ProductsController, :type => :controller do
	describe "GET #index" do

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

		it "responds with a http 200 code" do
			get :show
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
	
end