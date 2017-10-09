class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password]) then
      # Log the user in and redirect to the user's show page.
      flash.now[:success] = 'User successfully logged in.'
      render 'new'
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid username/password combination.'
      render 'new'
    end
  end

  def destroy
  end
end
