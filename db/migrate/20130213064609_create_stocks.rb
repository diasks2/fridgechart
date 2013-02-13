class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :food_id
      t.datetime :expiration
      t.integer :quantity

      t.timestamps
    end
  end
end
