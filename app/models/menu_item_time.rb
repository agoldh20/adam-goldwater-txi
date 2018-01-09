class MenuItemTime < ApplicationRecord
  belongs_to :menu_item
  belongs_to :meal_time
end
