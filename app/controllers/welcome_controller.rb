class WelcomeController < ApplicationController
  def index
    @categories = Category.joins(:shoes).all.uniq
  end
end
