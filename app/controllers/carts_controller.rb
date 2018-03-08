class CartsController < ApplicationController
  before_action :ensure_login

  def show
  	@cart = current_user.cart
  	@products = @cart.products
  end

  def addproduct
  	@cart = current_user.cart
  	@product = Product.find(params[:id])
    if (@cart.products).include? @product
      flash[:notice] = "Vous avez déjà acheté cette photo!"
      redirect_to root_path
    else
  	  @cart.products << @product
  	  @cart.save
      flash[:notice] = "La photo a bien été ajoutée à votre panier"
  	  redirect_to home_index_path
    end
  end

  def removeproduct
    @cart = current_user.cart
    @product = Product.find(params[:id])
    @cart.products.delete(@product)
    redirect_to @cart
  end



  def destroy
  	@cart = current_user.cart
  	@cart.destroy
  	redirect_to home_index_path

  end

  def buy

    require 'stripe'
    @order = Order.find(current_user.id)
    @products = @order.products
    @sum = 0
    @products.each do |product|
      @sum += product.price
    end
    @amount = (@sum*100).to_i
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )


    @order = Order.new
    @user = current_user
    @order.products = @products
    @user.orders << @order
    @user.save
    @order.save
    @user.cart.destroy
    flash[:success] = "Merci pour votre achat :)"
    redirect_to root_path
  end

end
