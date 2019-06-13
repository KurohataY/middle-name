class Commonname < ApplicationRecord
  validates :commonname, presence: true, length: { maximum: 255 }
  
  def self.ranking
    self.group(:commonname_id).order('count_commonname_id').limit(10).count(:commonname_id)
  end
  
  belongs_to :middle
end
