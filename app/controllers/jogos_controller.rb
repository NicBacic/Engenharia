class JogosController < ApplicationController
  before_action :set_jogo, only: [:show, :edit, :update, :destroy]

  # GET /jogos
  # GET /jogos.json
  def index
    @jogos = Jogo.all
    if params[:term]
      @jogos = Jogo.search(params[:term]).order("nome ASC")
    else
      @jogos = Jogo.all.order('nome ASC')
    end
  end

  # GET /jogos/1
  # GET /jogos/1.json
  def show
    @jogo = Jogo.find(params[:id])
    # add this line below...
  end

  # GET /jogos/new
  def new
    @jogo = Jogo.new
  end

  # GET /jogos/1/edit
  def edit
  end

  # POST /jogos
  # POST /jogos.json
  def create
    
    @jogo = Jogo.new jogo_params

    if @jogo.save
      flash[:notice] = 'Jogo adicionado com sucesso!'
      redirect_to @jogo
    else
      render :new
    end
  end

  # PATCH/PUT /jogos/1
  # PATCH/PUT /jogos/1.json
  def update
    @jogo = Jogo.find params[:id]
    
    if @jogo.update jogo_params
      flash[:notice] = 'Jogo atualizado com sucesso!'
      redirect_to @jogo
    else
      render :edit
    end
  end

  # DELETE /jogos/1
  # DELETE /jogos/1.json
  def destroy
    @jogo = Jogo.find params[:id]
    @jogo.destroy
    flash[:notice] = 'Jogo excluído com sucesso!'
    redirect_to @jogo
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jogo
      @jogo = Jogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jogo_params
      params.require(:jogo).permit(:nome, :publisher, :desenvolvedora, :rating, :term)
    end
end
