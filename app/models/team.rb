# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  member     :string(255)
#  win_count  :integer          default(0)
#  lose_count :integer          default(0)
#  leader     :string(255)
#  image      :string(255)
#  matched_at :datetime
#  comment_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  has_many :users
  has_many :comments
end
