# == Schema Information
#
# Table name: mychampions
#
#  id           :integer          not null, primary key
#  users_id     :integer
#  champions_id :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Mychampions < ActiveRecord::Base

end
