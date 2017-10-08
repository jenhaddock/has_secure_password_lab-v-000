class UsersController < ApplicationController

  def create
    @user.save(user_params)
  end

  def require_login
    redirect_to '/login' unless session.include? :name
  end

  def authenticate(password)

  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
