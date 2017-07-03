class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :comments
  has_many :likes

  belongs_to :user

  validates :picture, presence: true
end
