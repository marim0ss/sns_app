class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(users_params)
  end

  private
  def users_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
