class ReviewOrder < ApplicationRecord
  belongs_to :table
  belongs_to :menu_item
  belongs_to :order
end
