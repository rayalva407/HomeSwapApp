class User < ApplicationRecord
  has_many :trips
  has_many :homes, through: :trips
  has_secure_password
  accepts_nested_attributes_for :trips
  accepts_nested_attributes_for :homes
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end