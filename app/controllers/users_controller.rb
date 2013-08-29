class UsersController < ApplicationController
  def new
    @user = User.new
    @team = Team.all
  end

  def create
    @user_check = User.find_by_username(user_params[:username])
    if @user_check
      url = new_user_path+"\?error=already"
    else
    @user = User.new(user_params)
    @mychampions = Mychampions.new(users_id: "1",champions_id: "12")
      if @user.save
        url = new_session_path
      else
        render :new
      end
    end
    redirect_to url
  end
  
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :top, :ap, :ad, :mom, :jungle, :team, :email, :password)
  end
end
