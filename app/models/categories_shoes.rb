class CategoriesShoes < ActiveRecord::Base
  belongs_to :category
  belongs_to :shoe
end
