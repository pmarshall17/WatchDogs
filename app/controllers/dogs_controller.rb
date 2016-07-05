class DogsController < ApplicationController

  def show
  	@result = HTTParty.get("http://api.petfinder.com/pet.find?format=json&key=3cb99c576efa43d0164ed946c198bc20&token=0c19c50d5934afc22ef4a906da297516&location=Utah");
  end
end
