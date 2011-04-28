class SessionsController < ApplicationController

  def new
    return redirect_to examples_path if current_user
    @authorize_url = foursquare.authorize_url(callback_session_url)
  end
  
  def callback
    code = params[:code]
    @access_token = foursquare.access_token(code, callback_session_url)
    session[:access_token] = @access_token
    
    redirect_to examples_path
  end
  
end