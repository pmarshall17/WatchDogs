class LocationsController < ApplicationController
  require 'yelp'

  def index
    if params[:term]
      par = { term: params[:term], limit: 20 }
      @yelp_results = Yelp.client.search(params[:location], par)
      @locations = @yelp_results.businesses.map do |business| 
        {
         name: business.name,
         address: business.location.address.join(" "),
         latitude: business.location.coordinate.latitude,
         longitude: business.location.coordinate.longitude
        }  
      end
      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location[:latitude]
        marker.lng location[:longitude]
        marker.infowindow "<p>#{location[:name]}</p><p>#{location[:address]}</p>"
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
