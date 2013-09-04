class ChampionsController < ApplicationController

	before_filter :require_login

  def index
    @champions = Champion.all.order("name ASC")
    @user_champion = UserChampion.new
    @user_champion_ids = current_user.champions.pluck(:id)
  end
  
  
  def create
    ########################
    #@user_champion_array = user_champion_params[:champions_id].split(",")
    #  if (!UserChampion.find_by( users_id: current_user.id) )
    #    UserChampion.create( users_id: current_user.id, champions_id: user_champion_params[:champions_id] )
    #  else
    #    UserChampion.update(users_id: current_user.id, champions_id: user_champion_params[:champions_id] )
    #  end
    #   redirect_to champions_path
    #########################
  end
    
end
