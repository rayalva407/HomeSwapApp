class Swap < ApplicationRecord
  has_many :home_swaps
  has_many :homes, through: :home_swaps

end