class User < ApplicationRecord
  has_one :home
  has_secure_password
end