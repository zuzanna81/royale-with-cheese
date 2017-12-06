class UsersController < ApplicationController
  def show

  end

  def create
  
  end

  def new

  end

  private

  def user_params
    params[:user].permit(:email, :password, :password_confirmation)
  end
end
