# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)      not null
#  name             :string(255)
#  crypted_password :string(255)
#  salt             :string(255)
#  game_nickname    :string(255)
#  top              :string(255)
#  ap               :string(255)
#  jungle           :string(255)
#  mom              :string(255)
#  ad               :string(255)
#  team_id          :integer
#  comment_id       :integer
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_users_on_comment_id  (comment_id)
#  index_users_on_team_id     (team_id)
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :team
  
  has_many :comments
  has_many :user_champions
	has_many :champions, through: :user_champions, source: :champion
	
  validates_presence_of :email, :game_nickname, :name, :password, :team_id
  validates_uniqueness_of :email, :game_nickname, :name
  
end
