class CreateMealTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :meal_times do |t|
      t.string :name

      t.timestamps
    end
  end
end
