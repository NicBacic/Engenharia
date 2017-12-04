class SearchesController < ApplicationController

  def new
    @search = Search.new
    @consoles = Jogo.distinct.pluck(:console)
    @developers = Jogo.distinct.pluck(:desenvolvedora)
    @publishers = Jogo.distinct.pluck(:publisher)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private def search_params
    params.require(:search).permit(:nome, :console, :publisher, :desenvolvedora, :min_rating, :max_rating)
  end

end

