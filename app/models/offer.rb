class Offer < ApplicationRecord
  validates :description, presence: true, length: { minimum: 5 }
  validates :title, presence: true
  validates :product, presence: true
  validates :suggested_price, numericality: { only_integer: true }
end
