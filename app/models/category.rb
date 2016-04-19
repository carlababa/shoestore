class Category < ActiveRecord::Base
  has_and_belongs_to_many :shoes

  def image
    shoes.where("image is not null").try!(:first).try!(:image)
  end
end
