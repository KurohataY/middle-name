class Middle < ApplicationRecord
  belongs_to :user
  has_many :mr,:surname,:commonname
end
