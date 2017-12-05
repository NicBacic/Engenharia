class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @reviews = @user.reviews
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  def feedback
    @titulo
    @texto
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|

      if @user.save
        @user.send_activation_email
        format.html { redirect_to @user, notice: 'User was successfully created. Please check your email to activate your account.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
   
    #respond_to do |format|

      if @user.update(user_params)
        flash[:notice] = 'Usuário atualizado com sucesso!'
        redirect_to @user
      else
        flash[:notice] = 'Ocorreu um erro!'
        render :edit
      end
    #end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    flash[:notice] = 'Usuário deletado com sucesso!'
    redirect_to @user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_digest, :email)
    end
end
