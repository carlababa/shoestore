class AddCategoryToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :category, :string
  end
end
