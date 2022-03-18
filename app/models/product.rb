class Product < ApplicationRecord
  belongs_to :supplier

  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.09
    tax = tax.round(2)
  end

  def total
    total = price * 1.09
    total = total.round(2)
  end

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  validates :description, presence: true

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

end
