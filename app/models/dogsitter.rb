class Dogsitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dogs, through: :strolls

  validates :first_name, presence: true
  validates :last_name, presence: true
end
