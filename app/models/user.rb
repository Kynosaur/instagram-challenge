class User < ApplicationRecord

  validates :name, presence: true
  validates :name, :email, uniqueness: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  has_many :posts
  has_many :comments
  has_many :likes

  has_secure_password

end
