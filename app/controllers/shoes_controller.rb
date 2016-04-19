class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    # @shoes = Shoe.search(params[:search])
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def index

    if params[:search]
      shoes = Shoe.where("name LIKE ?", "%#{params[:search]}%")
      if shoes.present?
        @shoes = shoes
      else
        @shoes = Shoe.all
      end
    else
      @shoes = Shoe.all
    end

  end
end
