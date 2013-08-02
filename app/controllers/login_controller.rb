class LoginController < ApplicationController
  before_filter :authenticate_user!
  def index
  	answer = user_signed_in? ? current_user.email.to_s : 'Usuario Anonimo'
  	redirect_to :controller=>'home', :action=>'index'
  end
end
