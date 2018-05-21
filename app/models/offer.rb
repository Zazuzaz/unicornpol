class Offer < ApplicationRecord
  validates :description, presence: true,
                    length: { minimum: 5 }
end
