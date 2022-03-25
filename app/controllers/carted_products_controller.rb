class CartedProductsController < ApplicationController

  def index
    cart = CartedProduct.where(user_id: current_user.id)
    render json: cart
  end

  def create
    cart = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    cart.save
    render json: cart
  end

end
