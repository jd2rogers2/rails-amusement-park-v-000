module ApplicationHelper
  def is_logged_in?(session)
    session[:user_id] ? true : false
  end

  def current_user(session)
    User.find_by(id: session[:user_id])
  end
end
