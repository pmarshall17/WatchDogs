class Location < ActiveRecord::Base
	geocoded_by :full_addresss
	after_validation :geocode, :if => :address_changed?

	def full_address
		[address]
	end
end
