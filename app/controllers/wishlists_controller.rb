class WishlistsController < ApplicationController

  def show
    @user = User.find(params[:id])
    @wishlist = @user.wishlist
  end 

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
  end


end
