class User < ApplicationRecord
  has_secure_password
  has_many_favorites

  validates :email, uniqueness: true
  validates :email, presence: true
end
