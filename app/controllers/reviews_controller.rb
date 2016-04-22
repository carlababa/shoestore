class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    review_params = params.require( :review ).permit( :message )

    @review = Review.new( message: review_params[:message], user: current_user )

    if @review.save
       redirect_to reviews_path
    else
       render reviews_path
    end
 end

  def index
    @shoe = Shoe.find(params[:shoe_id])
    @reviews = @shoe.try!(:reviews)
  end

  def user
      @user = User.find( params[:user_id] )
      @reviews = Review.where( user: @user ).order( created_at: :desc )
   end

end
