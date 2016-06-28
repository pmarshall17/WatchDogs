class ApisController < ApplicationController
  def index
  	@apis = api(ENV[''])
  end

  def create
  	res = api.update(params[:api])
  	render json { api: res}
  end

  def show
  end

  def edit
  end

  def new
  end

  def private
  	
  end
end
