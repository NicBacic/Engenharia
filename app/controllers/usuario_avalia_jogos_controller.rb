class UsuarioAvaliaJogosController < ApplicationController
  before_action :set_usuario_avalia_jogo, only: [:show, :edit, :update, :destroy]

  # GET /usuario_avalia_jogos
  # GET /usuario_avalia_jogos.json
  def index
    @usuario_avalia_jogos = UsuarioAvaliaJogo.all
  end

  # GET /usuario_avalia_jogos/1
  # GET /usuario_avalia_jogos/1.json
  def show
  end

  # GET /usuario_avalia_jogos/new
  def new
    @usuario_avalia_jogo = UsuarioAvaliaJogo.new
  end

  # GET /usuario_avalia_jogos/1/edit
  def edit
  end

  # POST /usuario_avalia_jogos
  # POST /usuario_avalia_jogos.json
  def create
    @usuario_avalia_jogo = UsuarioAvaliaJogo.new(usuario_avalia_jogo_params)

    respond_to do |format|
      if @usuario_avalia_jogo.save
        format.html { redirect_to @usuario_avalia_jogo, notice: 'Usuario avalia jogo was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_avalia_jogo }
      else
        format.html { render :new }
        format.json { render json: @usuario_avalia_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_avalia_jogos/1
  # PATCH/PUT /usuario_avalia_jogos/1.json
  def update
    respond_to do |format|
      if @usuario_avalia_jogo.update(usuario_avalia_jogo_params)
        format.html { redirect_to @usuario_avalia_jogo, notice: 'Usuario avalia jogo was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_avalia_jogo }
      else
        format.html { render :edit }
        format.json { render json: @usuario_avalia_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_avalia_jogos/1
  # DELETE /usuario_avalia_jogos/1.json
  def destroy
    @usuario_avalia_jogo.destroy
    respond_to do |format|
      format.html { redirect_to usuario_avalia_jogos_url, notice: 'Usuario avalia jogo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_avalia_jogo
      @usuario_avalia_jogo = UsuarioAvaliaJogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_avalia_jogo_params
      params.require(:usuario_avalia_jogo).permit(:id_user, :id_jogo, :avaliacao)
    end
end
