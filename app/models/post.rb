class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  validates :picture, presence: true
end
