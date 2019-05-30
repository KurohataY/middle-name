class Commonname < ApplicationRecord
  validates :commonname, presence: true, length: { maximum: 255 }
end
