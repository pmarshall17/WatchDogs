class Favorite < ActiveRecord::Base
	before_action :authenticate_user!
	belongs_to :user
end
