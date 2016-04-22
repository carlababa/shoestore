class CategoriesController < ApplicationController
  def index
    @categories = Category.joins(:shoes).all.uniq
  end
end
