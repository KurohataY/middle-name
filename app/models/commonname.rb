class Commonname < ApplicationRecord
  validates :commonname, presence: true, length: { maximum: 255 }
  #使われた回数を昇順表示
  def self.ranking
    Middle.group(:commonname_id).order('count_commonname_id DESC').limit(5).count(:commonname_id)
  end
end
