class ApplicationController < ActionController::Base
	# load_and_authorize_resource
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, except: [:index]
	
end

