class SearchsController < ApplicationController

  def index
  @searchs = Search.all
    if params[:search]
      @searchs = Search.search(params[:search]).order("created_at DESC")
    else
      @searchs = Search.all.order('created_at DESC')
    end
  end

  def search_params
    params.require(:search).permit(:name, :complete, :due_date, :search)
  end
end
