class FinancialController < ApplicationController
  
  skip_load_and_authorize_resource
  authorize_resource :class => false
  skip_authorization_check

  def dashboard
  	@q = Cashiero.ransack(params[:q])
  	@cashieros = @q.result()
  end
end
