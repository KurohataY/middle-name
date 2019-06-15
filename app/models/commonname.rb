class Commonname < ApplicationRecord
  validates :commonname, presence: true, length: { maximum: 255 }
  def self.ranking
    Middle.group(:commonname_id).order('count_commonname_id').limit(5).count(:commonname_id)
  end
end
