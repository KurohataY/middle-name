class Surname < ApplicationRecord
  validates :surname, presence: true, length: { maximum: 255 }
  
  def self.ranking
    Middle.group(:surname_id).order('count_surname_id').limit(5).count(:surname_id)
  end
  
  
end
