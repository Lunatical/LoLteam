class UserChampionsController < ApplicationController

	before_filter :require_login

	def create
		@uc = UserChampion.create(user_id: current_user.id, champion_id: params[:champion_id])
	end
	
	def destroy
		  @uc = UserChampion.find(params[:id]).destroy
	end
	
	

end
