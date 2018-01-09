class MealTime < ApplicationRecord
  has_many :menu_item_times
  has_many :menu_items, through: :menu_item_times
end
