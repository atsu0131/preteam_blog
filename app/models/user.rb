class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  has_many :blogs
  has_many :favorites, dependent: :destroy
  has_many :favorite_blogs, through: :favorites, source: :blog
end
