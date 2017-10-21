class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password]) then
      # Log the user in and redirect to the user's show page.
      log_in user
      flash.now[:success] = 'User successfully logged in.'
      redirect_to home_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid username/password combination.'
      render 'new'
    end
  end

  def destroy
    log_out
    flash.now[:success] = 'Logged out successfully.'
    redirect_to home_path
  end
end
