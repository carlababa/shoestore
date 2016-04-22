class ShoesController < ApplicationController
  def show
    @shoe = Shoe.find(params[:id])
  end

  def men
    params[:gender] = 'man'
    index
    render :index
  end

  def women
    params[:gender] = 'woman'
    index
    render :index
  end

  def kids
    params[:gender] = 'kids'
    index
    render :index
  end

  def index
    if params[:search]
      shoes = Shoe.where("shoes.name iLIKE ?", "%#{params[:search]}%")
      if shoes.present?
        @shoes = shoes
      else
        redirect_to shoes_path, notice: "Sorry, we have no results for your search!"
      end
    else
      @shoes = Shoe.all
    end
    @shoes = @shoes.joins(:categories).where(categories:{id: params[:category_id]}) if params[:category_id].present?
    @shoes = @shoes.where(gender:[params[:gender],"unisex"]) if params[:gender].present?
  end

end
