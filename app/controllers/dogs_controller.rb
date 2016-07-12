class DogsController < ApplicationController

  def show
  	options = {}
  	# 1. check to see if you have each param
	options[:breed] = params[:breed] if params[:breed]
  	options[:sex] = params[:sex] if params[:sex]
  	options[:size] = params[:size] if params[:size]
  	options[:age] = params[:age] if params[:age]

  	@result = Dog.search(params[:location], options)
  end
end
