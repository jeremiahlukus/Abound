class ShoppingCartsController < ApplicationController
  before_filter :extract_shopping_cart

  def create
    @listing = Listing.find(params[:listing_id])
    @shopping_cart.add(@listing, @listing.price)
    redirect_to shopping_cart_path
  end

  def show
    @listings = Listing.all.order("created_at DESC")
  end

  
  private
  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
end
