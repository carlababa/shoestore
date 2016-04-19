class RemoveCategoryFromShoe < ActiveRecord::Migration
  def change
    remove_column :shoes, :category
  end
end
