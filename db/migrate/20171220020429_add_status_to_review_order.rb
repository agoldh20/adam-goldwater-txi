class AddStatusToReviewOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :review_orders, :status, :string
  end
end
