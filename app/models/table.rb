class Table < ApplicationRecord
  has_many :orders
  has_many :review_orders
end
