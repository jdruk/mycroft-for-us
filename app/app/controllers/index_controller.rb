class IndexController < ApplicationController

	# Autorizar página root para todos usuarios
	skip_authorization_check
	skip_before_action :authenticate_user!, only: [:index]
	skip_load_and_authorize_resource
	authorize_resource :class => false

	layout "home_layout", only: :index
	
	def index
	end

	def dashboard
		authorize! :dashboard, :index
		if current_user.admin?
			@users = User.order(:current_sign_in_at).take(10)
			@cashiero = Cashiero.order(:updated_at).take(10)
			@clients = Client.order(:updated_at).take(10)
		end
	end
end
