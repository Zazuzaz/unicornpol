class Merchantprofile < ApplicationRecord
	validates :email, presence: true,
                    length: { minimum: 3 }
    validates :name, presence: true,
                    length: { minimum: 5 }
		has_many :products
end
