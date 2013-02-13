class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :food_type
      t.string :lcd_unit

      t.timestamps
    end
  end
end
