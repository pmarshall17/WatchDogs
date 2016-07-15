class OutreachController < ApplicationController
  def index
  	@outreaches = Outreach.all 
  end
end
