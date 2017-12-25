class Order < ApplicationRecord
  has_many :review_orders
  has_many :tables, through: :review_orders

  def calculate_subtotal
    sum = 0
    review_order.each do |item|
      sum += item.subtotal
    end  
    self.subtotal = sum
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
