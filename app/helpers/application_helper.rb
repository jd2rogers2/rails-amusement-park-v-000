module ApplicationHelper
  def is_logged_in?(session)
    session[:user_id] ? true : false
  end
end
