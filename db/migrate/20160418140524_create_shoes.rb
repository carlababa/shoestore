class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.text :description
      t.string :image
      t.string :color
      t.string :gender
      t.string :brand
      t.integer :size

      t.timestamps null: false
    end
  end
end
