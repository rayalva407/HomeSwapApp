class Home < ApplicationRecord
  belongs_to :user
  has_many :home_swaps
  has_many :swaps, through: :home_swaps
  validates :address, presence: true
end