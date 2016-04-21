class AddShoeIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :shoe_id, :integer
    add_foreign_key :reviews, :shoes
  end
end
