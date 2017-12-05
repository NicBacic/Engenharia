class WishlistsController < ApplicationController

  def show
    @user = User.find(params[:id])
    @wishlist = @user.wishlist
  end 

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
  end

  # GET /wishlists/1/edit
  def edit
  end

  # POST /wishlists
  # POST /wishlists.json
  def create
    
    if current_user.present?
      @wishlist = Wishlist.new(wishlist_params)
      @user = current_user
      
    else
      flash[:error] = 'You must be logged to see your wishlist!'
      redirect_to login_path
    end

    if @wishlist.save
      flash[:success] = 'Wishlist created!'
      redirect_to @user.wishlist_path
    else
      flash[:error] = "Wishlist wasn't saved"
      redirect_to @user.wishlist_path
    end
    
  end

  # PATCH/PUT /wishlists/1
  # PATCH/PUT /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to @wishlist, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlists/1
  # DELETE /wishlists/1.json
  def destroy
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to wishlists_url, notice: 'Wishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_params
      params.require(:wishlist).permit(:user_id => current_user.id).merge(:user_id => current_user.id)
    end
end
