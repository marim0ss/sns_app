class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(users_params)

    if @user
      redirect_to welcome_path
    else
      render :new
    end
  end

  private
  def users_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
