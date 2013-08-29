class SessionsController < ApplicationController
  def index
    redirect_to root_url
  end
  def new
  end
  
  def create
    user = login(params[:email],params[:password])
    if user
        redirect_to teams_path
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to new_session_path, :notice => "Logged out!"
  end

end