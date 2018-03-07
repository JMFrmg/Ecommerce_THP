class OrdersController < ApplicationController
  def index
  	@orders = current_user.orders
  end

  def show
  	@products = Order.find(params[:id]).products
  end
end
