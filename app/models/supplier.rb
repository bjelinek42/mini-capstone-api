class Supplier < ApplicationRecord
  has_many :product

  # def products
  #   Product.where(supplier_id: id)
  # end
end
