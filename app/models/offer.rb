class Offer < ApplicationRecord
  validates :description, presence: true, length: { minimum: 5 }
  validates :title, presence: true
  validates :product, presence: true
  validates :suggested_price, numericality: { only_integer: true }
  validates :status, presence: true
  validates :customer, presence: true

  belongs_to :product, foreign_key: 'product_id'
  belongs_to :customer, foreign_key: 'customer_id'
end
