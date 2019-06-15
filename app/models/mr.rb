class Mr < ApplicationRecord
  validates :mr, presence: true, length: { maximum: 255 }
  
  #使われた回数を昇順表示
  def self.ranking
    Middle.group(:mr_id).order('count_mr_id DESC').limit(2).count(:mr_id)
  end

end
