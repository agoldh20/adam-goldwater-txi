class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :menu_item_id
      t.integer :quantity
      t.string :notes

      t.timestamps
    end
  end
end
