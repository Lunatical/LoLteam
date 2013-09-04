# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  loser_id   :integer
#  l_k_count  :integer
#  l_d_count  :integer
#  l_a_count  :integer
#  winner_id  :integer
#  w_k_count  :integer
#  w_d_count  :integer
#  w_a_count  :integer
#  matched_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Match < ActiveRecord::Base
  
  has_many :comments, :as => :content
  
  def start_time
    matched_at
  end
end
