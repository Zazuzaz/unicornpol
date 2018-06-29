class Customer < ApplicationRecord
	validates :email, presence: true,
                    length: { minimum: 5 }
    validates :name, presence: true,
                    length: { minimum: 5 }
    has_many :offer, foreign_key: 'offer_id'
end
