class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	
	validates :address, presence: true
	validates :description, presence: true
	validates :name, length: { minimum: 3,
	too_short: "%{count} is the minimum allowed! No place has less than 3 letters!" }
end
