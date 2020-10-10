class User < ApplicationRecord
  has_many :trips
  has_many :homes, through: :trips
  has_secure_password
  accepts_nested_attributes_for :trips

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
end