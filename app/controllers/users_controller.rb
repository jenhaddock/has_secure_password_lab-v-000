class UsersController < ApplicationController
  before_action :require_login

  def require_login
    redirect_to '/login' unless session.include? :name
  end

  def authenticate(password)

  end
end
