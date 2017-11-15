class Restaurant < ApplicationRecord

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES,
             message: "%{:category} not included in categories" }

  has_many :reviews, dependent: :destroy
  validates_associated :reviews
end
