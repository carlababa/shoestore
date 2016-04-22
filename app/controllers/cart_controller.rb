class CartController < ApplicationController
  def add
    id=params[:id]
    logger.info id

  if session[:cart] then
    cart=session[:cart]
  else
    session[:cart]={}
    cart=session[:cart]
  end

    if cart[id] then
      cart[id]=cart[id] +1
    else cart[id]=1

    end
    logger.info cart
    redirect_to cart_path
  end

  def clearCart
    session[:cart]=nil
    redirect_to cart_path

  end

  def index
    if session[:cart] then
      @cart=session[:cart]
    else @cart={}

  end
end

  def destroy
    session[:cart].delete(params[:id])

    redirect_to cart_path
  end

end
