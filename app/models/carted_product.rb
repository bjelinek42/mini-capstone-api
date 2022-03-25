class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  def show_carted
    cart = CartedProduct.where(user_id: current_user.id)
    carted = cart.select { |product| product[:status] == "carted"}
    return carted
  end
end
