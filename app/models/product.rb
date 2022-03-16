class Product < ApplicationRecord

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

end
