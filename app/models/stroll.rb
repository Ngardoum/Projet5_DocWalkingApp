class Stroll < ApplicationRecord
  belongs_to :dogsitter
  belongs_to :dog

  validates :date, presence: true
end
