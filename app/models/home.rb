class Home < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips
  validates :address, presence: true
end