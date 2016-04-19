class WelcomeController < ApplicationController
  def index
    @categories = Category.joins(:shoes).all
  end
end
