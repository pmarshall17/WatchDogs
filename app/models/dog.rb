class Dog < ActiveRecord::Base

	def self.search(zip, options = {})
    petfinder = Petfinder::Client.new
		petfinder.find_pets("dog", zip, options)
	end
end
