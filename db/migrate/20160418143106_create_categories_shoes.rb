class CreateCategoriesShoes < ActiveRecord::Migration
  def change
    create_table :categories_shoes do |t|
      t.references :category, index: true, foreign_key: true
      t.references :shoe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
