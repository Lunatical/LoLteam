class Champion < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
