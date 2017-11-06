class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if current_user.present?
      @user = User.find(params[:user_id])
      @review = @user.reviews.create(params[review_params])
    end

    if @review.save
      flash[:success] = "Review created!"
    else
      flash[:error] = "Review wasn't saved"
    end
    @jogo = @review.jogo
    redirect_to @jogo
  end

  private

  def review_params
    params.require(:review).permit(:texto).merge(jogo_id: current_jogos.id)
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
