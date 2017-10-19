class ReviewsController < ApplicationController
  def new

  end

  def create
    @jogo = Jogo.find(params[:jogo_id])
    @review = @jogo.reviews.create(params[review_params])
    redirect_to jogo_path(@jogo)
  end

  private def review_params
    params.require(:review).permit(:body)
  end

  def show
    @review = Review.find(params[:id])
  end

end
