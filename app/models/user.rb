class User < ApplicationRecord
  has_many :users, dependent: :destroy

  validates :name,  presence: true, length: {maximum: 30}
  validates :email, presence: true
  validates :password, presence: true
end
