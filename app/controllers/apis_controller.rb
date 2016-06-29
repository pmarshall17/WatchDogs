class ApisController < ApplicationController
   before_action :quiz, only: [:show]

  def index
    @apis = Api.all
  end
  
  def show  
  end

  private

  def api
     @api = Api.find(params[:id])
  end

  def api_params
  end
end
