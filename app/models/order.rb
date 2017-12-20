class Order < ApplicationRecord
  has_many :review_orders
  has_many :tables, through: :review_orders
end
