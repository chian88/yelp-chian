class User < ApplicationRecord
  has_many :reviews

  validates :email, uniqueness: true

  has_secure_password
end