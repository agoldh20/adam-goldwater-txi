class CreateMenuCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_categories do |t|
      t.integer :menu_item_id
      t.integer :category_id

      t.timestamps
    end
  end
end
