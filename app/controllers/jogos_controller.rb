class JogosController < ApplicationController
  before_action :set_jogo, only: [:show, :edit, :update, :destroy]

  # GET /jogos
  # GET /jogos.json
  def index
    @jogos = Jogo.search(params[:term])
  end

  # GET /jogos/1
  # GET /jogos/1.json
  def show
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
    @jogo = Jogo.new(jogo_params)

    respond_to do |format|
      if @jogo.save
        format.html { redirect_to @jogo, notice: 'Jogo was successfully created.' }
        format.json { render :show, status: :created, location: @jogo }
      else
        format.html { render :new }
        format.json { render json: @jogo.errors, status: :unprocessable_entity }
      end
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
      params.require(:jogo).permit(:nome, :publisher, :desenvolvedora, :preco, :rating, :idadeRecomendada,:term)
    end
end
