class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end

  def show
  end
end
