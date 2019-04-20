class SessionController < ApplicationController
  def new
    #just renders the login form
  end

  #create a session by logging in, find the user (user) then persist them
  def create
    user = User.find_by(name: params[:session][:name])

    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user_path(session[:id])
    else
      flash[:notice] = "That didn't work"
      render :new
    end
  end

  def destroy
    session.clear
  end

end
