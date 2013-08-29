# == Schema Information
#
# Table name: users
#
#  id               :integer         not null, primary key
#  username         :string(255)
#  top              :string(255)
#  ap               :string(255)
#  jungle           :string(255)
#  mom              :string(255)
#  ad               :string(255)
#  team             :string(255)     not null
#  email            :string(255)
#  crypted_password :string(255)
#  salt             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :team
  has_many :user_champions
	has_many :champions, through: :user_champions, source: :champion
	
	
end
