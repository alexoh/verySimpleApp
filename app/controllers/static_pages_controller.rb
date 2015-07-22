class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.all
  	@counter = Product.count	
  end
end


