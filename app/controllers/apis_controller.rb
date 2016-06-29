class ApisController < ApplicationController
  def index
  	@apis = api(ENV['KEY'] ['TOKEN']) #this is probably way off
  end

  def create
  end

  def show
  end

  def edit
  end

  def new
  end

  def private
	  def api
		  @api ||= Api::REST::Client.new do |config|
		    config.api_key = ENV['API_KEY']
		    config.api_token = ENV['API_TOKEN']
			end  	
  	end
  end
end
