# == Schema Information
#
# Table name: champions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Champion < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
