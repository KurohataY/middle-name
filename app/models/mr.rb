class Mr < ApplicationRecord
  validates :mr, presence: true, length: { maximum: 255 }
end
