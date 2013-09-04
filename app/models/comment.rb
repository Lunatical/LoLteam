# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  writer       :string(255)
#  body         :string(255)
#  content_id   :integer
#  content_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :content, :polymorphic => true
  belongs_to :user
end
