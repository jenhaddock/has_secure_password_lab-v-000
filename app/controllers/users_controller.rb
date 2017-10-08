class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to "/"
    else
      render :new
    end
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
