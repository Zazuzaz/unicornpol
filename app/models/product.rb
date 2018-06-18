class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :description, presence: true, length: { maximum: 500}
  belongs_to :merchantprofile, foreign_key: 'merchantprofile_id'
end
