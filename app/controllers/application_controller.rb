class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
  	if current_user.blank?
  		redirect_to '/users/sign_in'
  	end
  end
end
