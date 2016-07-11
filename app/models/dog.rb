class Dog < ActiveRecord::Base

	def self.search(location, options)
    petfinder = Petfinder::Client.new
		petfinder.find_pets("dog", location, options)
	end
end
