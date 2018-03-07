class OrdersController < ApplicationController
  before_action :ensure_login
  def index
  	@orders = current_user.orders

  end

  def show
  	@order = Order.find(params[:id])
  	@products = @order.products
  end

  
  
end
