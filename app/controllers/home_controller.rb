class HomeController < ApplicationController
  def index
    if logged_in? && !current_user.cart
    	@cart = Cart.new(name:"Mon Panier")
    	current_user.cart = @cart
    	@cart.save
    end
    @products = Product.all

  end
end
