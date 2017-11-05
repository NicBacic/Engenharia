class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    
         

    if current_user.present?
      @review = Review.new(review_params_user)
      @user = current_user
      @user.reviews.create(params[review_params])
    else
      @review = Review.new(review_params)
    end

    if @review.save
      flash[:success] = 'Review created!'
      @jogo = @review.jogo
      redirect_to @jogo
    else
      flash[:error] = "Review wasn't saved"
      redirect_to @jogo
    end
    
  end

  private
  def review_params
    params.require(:review).permit(:texto).merge(:jogo_id => current_jogos.id)
  end

  private
  def review_params_user
    params.require(:review).permit(:texto).merge(:jogo_id => current_jogos.id, :user_id => current_user.id)
  end

  def show
    @review = Review.find(params[:id])
  end
  
   def current_jogos
    @current_jogo ||= Jogo.find(params[:jogo_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

end
