class CreateMenuItemTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_item_times do |t|
      t.integer :menu_item_id
      t.integer :meal_time_id

      t.timestamps
    end
  end
end
