class CartsController < ApplicationController
  before_action :ensure_login

  def show
  	@cart = current_user.cart
  	@cart_products = @cart.products
  end

  def addproduct
  	@cart = current_user.cart
  	@product = Product.find(params[id])
  	@cart.products << @product
  	@cart.save
  	redirect_to home_index_path
  end


  def destroy
  	@cart = current_user.cart
  	@cart.destroy
  	redirect_to home_index_path

  end

end
