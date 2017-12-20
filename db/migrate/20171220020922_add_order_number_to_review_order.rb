class AddOrderNumberToReviewOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :review_orders, :table_id, :integer
    add_column :review_orders, :order_id, :integer
  end
end
