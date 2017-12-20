class AddTotalColumnToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :subtotal, :integer
    add_column :orders, :tax, :integer
    add_column :orders, :total, :integer
    add_column :orders, :table_id, :integer
    remove_column :orders, :menu_item_id, :string
    remove_column :orders, :quantity, :integer
  end
end
