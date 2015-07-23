class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.all
  	@counter = Product.count	
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	UserMailer.contact_form(@email, @name, @message).deliver
  end
end


