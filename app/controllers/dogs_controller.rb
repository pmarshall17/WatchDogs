class DogsController < ApplicationController

  def show
  	@result = HTTParty.get("http://api.petfinder.com/pet.find?format=json&key=3cb99c576efa43d0164ed946c198bc20&token=7fe110ef22c157262d267f50b4cc76da&location=Utah");
  		
  end
end
