class Favorite < ApplicationRecord
  belongs_to :user

  validates :name, uniqueness: true
  validates :name, presence: true
end
