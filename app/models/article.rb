class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  has_one_time_password
end
