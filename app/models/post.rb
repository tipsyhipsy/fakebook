class Post < ApplicationRecord
  mount_uploader :image, ImgUploader
  validates :content, presence:true
  belongs_to :user
end
