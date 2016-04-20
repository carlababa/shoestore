class ShoesController < ApplicationController
  def show
    @shoe = Shoe.find(params[:id])
  end

  def index
    if params[:search]
      shoes = Shoe.where("shoes.name LIKE ?", "%#{params[:search]}%")
      if shoes.present?
        @shoes = shoes
      else
        @shoes = Shoe.all
      end
    else
      @shoes = Shoe.all
    end
    @shoes = @shoes.joins(:categories).where(categories:{id: params[:category_id]}) if params[:category_id].present?
  end


def menShoes
  @menShoes=Shoe.where({gender:["men","unisex"]})



end


def womenShoes
@womanShoes=Shoe.where({gender:["woman", "unisex"]})

end

def kidShoes
  @kidShoes=  @menShoes=Shoe.where({gender:["kids","unisex"]})

end


end
