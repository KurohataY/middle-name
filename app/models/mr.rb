class Mr < ApplicationRecord
  validates :mr, presence: true, length: { maximum: 255 }
  
  def self.ranking
    self.group(:mr_id).order('count_mr_id').limit(2).count(:mr_id)
  end
  
  
end
