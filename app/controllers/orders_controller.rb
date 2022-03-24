class OrdersController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def show
    order = Order.find_by(id: params[:id])
    if current_user && order.user == current_user
      render json: order.as_json
    else
      render json: {message: "you must be logged in"}
    end
  end

  def index
    if current_user
      order = Order.where(user_id: current_user.id)
      render json: order.as_json
    else
      render json: {message: "you must be logged in"}
    end
  end


  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: product.tax * params[:quantity],
      total: product.total * params[:quantity]
    )
    order.save!
    render json: order.as_json
  end

end
