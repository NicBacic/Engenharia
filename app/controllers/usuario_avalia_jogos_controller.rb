class UsuarioAvaliaJogosController < ApplicationController
  before_action :set_usuario_avalia_jogo, only: %i[show edit update destroy]

  # GET /usuario_avalia_jogos/1
  # GET /usuario_avalia_jogos/1.json
  def show
    @usuario_avalia_jogo = UsuarioAvaliaJogo.all
  end

  # GET /usuario_avalia_jogos/new
  def new
    @usuario_avalia_jogo = UsuarioAvaliaJogo.new
  end

  # GET /usuario_avalia_jogos/1/edit
  def edit; end

  # POST /usuario_avalia_jogos
  # POST /usuario_avalia_jogos.json
  def create
    @usuario_avalia_jogo = UsuarioAvaliaJogo.new(usuario_avalia_jogo_params)
    if current_user.present?
      @user = User.find(params[:user_id])
      @usuario_avalia_jogo = @user.usuarioAvaliaJogos.create(params[usuario_avalia_jogo_params])
    end

    if @usuario_avalia_jogo.save
      flash[:success] = 'Avaliação sucedida!'
    else
      flash[:error] = 'Avaliação não sucedida!'
    end
    @jogo = @usuario_avalia_jogo.jogo
    redirect_to @jogo
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
    @usuario_avalia_jogo.destroy(usuario_avalia_jogo_params)
    respond_to do |format|
      format.html { redirect_to usuario_avalia_jogos_url, notice: 'Usuario avalia jogo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def current_jogos
    @current_jogo ||= Jogo.find(params[:jogo_id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_usuario_avalia_jogo
    @usuario_avalia_jogo = UsuarioAvaliaJogo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def usuario_avalia_jogo_params
    params.require(:usuario_avalia_jogo).permit(:avaliacao).merge(jogo_id: current_jogos.id)
  end
end
