class LocationsController < ApplicationController
  require 'yelp'

  def index
    @locations = Location.all

  end

  def search
    par = { term: params[:term], limit: 12 }
    @yelp_results = JSON.parse(Yelp.client.search(params[:location], par).to_json)
    binding.pry
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

end
