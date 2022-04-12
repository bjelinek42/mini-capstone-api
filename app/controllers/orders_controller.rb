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
    cp = CartedProduct.where(user_id: current_user.id)
    carteds = []
    cp.each do |product|
      if product.status == "carted"
        carteds << product
      end
    end
    # cp = CartedProduct.where(user_id: current_user.id, status: "carted")
    # render json: carted
    subtotals = []
    carteds.each do |carted|
      product = Product.find(carted.product_id)
      price = product.price
      subtotal = price * carted.quantity
      subtotals << subtotal
    end
    subtotal = subtotals.sum
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    order.save!
    carteds.each do |carted|
      carted.status = "purchased"
      carted.order_id = order.id
      carted.save
    end
    render json: order.as_json
  end

end
