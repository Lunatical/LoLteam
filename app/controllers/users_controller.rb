class UsersController < ApplicationController  
  layout :layout
  
  def layout
    if current_user
      "index_users"
    else
      "users"
    end
  end
  
  def index
    @user_team = current_user.team
    @user_champions = current_user.champions
    @matchs = Match.all
  end
  
  def new
    @user = User.new
    @team = Team.all
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      user = login(params[:user][:email],params[:user][:password])
      redirect_to teams_path
    else
      render :new
    end
  end
    
  def show
    @user = User.find(params[:id])
    @team = @user.team
    @teams = Team.all
    @champions = @user.champions
    @matches = Match.all
    @match = Match.new()
  end
  
  def update
    current_user.update_attribute(:team_id, params[:user][:team_id])
    redirect_to :back 
  end

  
  private 
  
  def user_params
    params.require(:user).permit(:name, :game_nickname, :top, :ap, :ad, :mom, :jungle, :team_id, :email, :password)
  end
  def user_team_params
    params.require(:user).permit(:team_id)
  end
end
