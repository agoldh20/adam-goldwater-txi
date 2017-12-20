class CreateReviewOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :review_orders do |t|
      t.integer :menu_item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
