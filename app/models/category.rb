class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  # def products
  #   product = product.find_by[id: params[:id]]
  #   product_categories = []
  #   category_product = CategoryProduct.all
  #   category_product.each do |category|
  #     if category.product_id == product.id
  #       product_categories << category.category_id
  #     end
  #   p product_categories
  # end
end
