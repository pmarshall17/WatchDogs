class DogsController < ApplicationController

  def show
  	@result = Dog.search("84102",{breed: "Labrador Retriever"})
  											# (params[:zip], params[:options]) the way to input the users data request search
  end
end
