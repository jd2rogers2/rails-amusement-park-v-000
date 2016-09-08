class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def signin
    @user = User.new
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
    if is_logged_in?
      @user = User.find_by(id: params[:id])
    else
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :admin, :password, :height, :nausea, :tickets, :happiness)
  end
end
