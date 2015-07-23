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
  	ActionMailer::Base.mail(
  		:from => @email,
  		:to => "al3x.ohm@gmail.com",
  		:subject => "A new contact form message from #{@name}",
  		:body => @message
  		).deliver
  end
end


