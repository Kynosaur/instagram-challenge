class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :comments

  validates :picture, presence: true
end
