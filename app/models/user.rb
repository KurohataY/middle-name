class User < ApplicationRecord
  #メールアドレスを小文字で保存
  before_save { self.email.downcase! }
  #名前・メールの設定
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password

  #Middleモデルとのリレーション
  has_many :middles
end
