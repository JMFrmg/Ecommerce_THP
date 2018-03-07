class OrdersController < ApplicationController
  def index
  	@orders = current_user.orders

  end

  def show
  	@order = Order.find(params[:id])
  	@products = @order.products
  end
end
