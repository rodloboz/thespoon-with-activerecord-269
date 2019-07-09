class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :stars, inclusion: { in: 1..5, message: 'must be between 1 and 5' }
end
