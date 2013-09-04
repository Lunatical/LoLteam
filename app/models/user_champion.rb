# == Schema Information
#
# Table name: user_champions
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  champion_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_user_champions_on_champion_id  (champion_id)
#  index_user_champions_on_user_id      (user_id)
#

class UserChampion < ActiveRecord::Base

	belongs_to :user
	belongs_to :champion


end
