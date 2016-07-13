class LocationsController < ApplicationController
  require 'yelp'

  def index
    if params[:term]
      par = { term: params[:term], limit: 20 }
      @yelp_results = Yelp.client.search(params[:location], par)
      @locations = @yelp_results.businesses.map { |business| business.location.coordinate  }
      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location.latitude
        marker.lng location.longitude
      end
    end
  end

  # def search
  #   par = { term: params[:term], limit: 12 }
  #   @yelp_results = JSON.parse(Yelp.client.search(params[:location], par).to_json)
  # end

  def edit
  end

  def update
  end

  def delete
  end

end
