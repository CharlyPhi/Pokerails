class User < ApplicationRecord
  has_secure_password
  has_many :favorites

  validates :email, uniqueness: true
  validates :email, presence: true
end
