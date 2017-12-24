class Table < ApplicationRecord
  has_many :orders
  has_many :review_orders

  validates :name, uniqueness: true

  def current_pending
    review_orders.where(status: "pending")
  end
end
