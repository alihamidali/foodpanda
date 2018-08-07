class ApplicationController < ActionController::Base
	# load_and_authorize_resource
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, except: [:index, :about, :contact]

	layout 'application'

	def index
		@cities = City.all
	end

	def user_profile
		@user = User.find(current_user.id)
	end

	def update_profile
		@user = User.find(current_user.id)
		if @user.update_attributes(user_profile_update_param)
			flash[:profile_update_notice] = 'Profile updated'
			redirect_to action: 'user_profile'
		else
			flash[:profile_update_notice] = 'Invalid arguments'
			render(user_profile)
		end

	end


	protected
	
	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    	devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end

    def user_profile_update_param
    	params.require(:user).permit(:first_name, :last_name, :email, :phone_no)
    end
end

