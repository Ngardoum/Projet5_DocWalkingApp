class City < ApplicationRecord
  has_many :dogs
  has_many :dogsitters

  validates :city_name, presence: true
end
