class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :description, presence: true, length: { maximum: 500}
  belongs_to :merchant, foreign_key: 'merchant_id'
end
