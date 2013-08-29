class ChampionsController < ApplicationController
  def index
    @champion = Champion.order("name ASC").all
    #@user_champion = UserChampion.where(users_id: current_user.id).pluck(:champions_id)
    @user_champions = UserChampion.where(users_id: current_user.id)
  end
  
  def new
    @champion = Champion.new
    @user_champion = UserChampion.new
  end
  
  def create
    ########################
    #@user_champion_array = user_champion_params[:champions_id].split(",")
    #  if (!UserChampion.find_by( users_id: current_user.id) )
    #    UserChampion.create( users_id: current_user.id, champions_id: user_champion_params[:champions_id] )
    #  else
    #    UserChampion.update(users_id: current_user.id, champions_id: user_champion_params[:champions_id] )
    #   end
    #   redirect_to champions_path
    #########################
    
    @user_champions = my_champion_params[:champions_id].split(",")
    @user_champions.each do |user_champion|
      if (!UserChampion.find_by( users_id: current_user.id, champions_id: user_champion ))
        UserChampion.create( users_id: current_user.id, champions_id: user_champion )
      end
    end

    delete_to = UserChampion.where( users_id: current_user.id).pluck(:champions_id)
    delete_should = delete_to - @user_champions
    delete_should.each do |user_champion|
      UserChampion.where(users_id: current_user.id, champions_id: user_champion).destroy_all
    end
    redirect_to champions_path, notice: 'Team was successfully updated.'   
  end
  
  def edit
    @champ = Champion.all.order("name ASC")
    @user_champion = UserChampion.new
    @user_champions = UserChampion.where(users_id: current_user.id)
  end
    
  private
  def my_champion_params
    params.require(:user_champion).permit(:champions_id)
  end
    
end
