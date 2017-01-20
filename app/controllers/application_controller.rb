class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def verify_user
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
