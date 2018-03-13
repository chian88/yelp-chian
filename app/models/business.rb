class Business < ApplicationRecord
  has_many :reviews

  validates :full_name, presence: true
  validates :description, presence: true
  validates :categories, presence: true
end 