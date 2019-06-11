class Surname < ApplicationRecord
  validates :surname, presence: true, length: { maximum: 255 }
  
  def self.ranking
    self.group(:surname_id).order('count_surname_id').limit(10).count(:surname_id)
  end
end
