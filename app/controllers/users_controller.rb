class UsersController < ApplicationController

  def homepage

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render :homepage
    else
      render :new
    end
  end

  def require_login
    redirect_to '/login' unless session.include? :user_id
  end

  def authenticate(password)

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
