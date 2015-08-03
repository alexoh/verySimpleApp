require 'rails_helper'

describe StaticPagesController, :type => :controller do

	describe "GET #index" do
		it "responds successfully with an http 200 status code" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end 

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "GET #landing_page" do
		it "responds successfully with a http 200 status code" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
	
end
