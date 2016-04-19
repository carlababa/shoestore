class WelcomeController < ApplicationController
  def index
    @categories = Shoe.where("price > ?", 100)
  end
end
