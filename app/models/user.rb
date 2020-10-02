class User < ApplicationRecord
  has_one :home
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
end