class SessionsController < ApplicationController

  def home
  end

  def new
  end

  def show
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def edit
  end

  def update
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
