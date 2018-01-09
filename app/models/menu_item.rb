class MenuItem < ApplicationRecord
  has_many :menu_categories
  has_many :categories, through: :menu_categories
  has_many :review_order
  has_many :menu_item_times
  has_many :meal_times, through: :menu_item_times
end
