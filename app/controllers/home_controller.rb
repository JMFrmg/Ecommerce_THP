class HomeController < ApplicationController
  def index
    if logged_in? && !current_user.cart
    	current_user.cart = Cart.new
    end
    @products = Product.all

  end
end
