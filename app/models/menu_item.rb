class MenuItem < ApplicationRecord
  has_many :menu_categories
  has_many :categories, through: :menu_categories
  belongs_to :review_order
end
