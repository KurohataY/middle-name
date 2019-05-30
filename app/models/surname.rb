class Surname < ApplicationRecord
  validates :surname, presence: true, length: { maximum: 255 }
end
