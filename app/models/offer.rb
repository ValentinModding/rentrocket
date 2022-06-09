class Offer < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :image
  validates :brand, :model, :body_type, presence: true
  validates :year, inclusion: { in: (1910..2022) }, numericality: { only_integer: true }
  validates :horsepower, presence: true
  
end
