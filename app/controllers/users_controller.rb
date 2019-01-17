class UsersController < ApplicationController

  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.create(users_params)

    if @user
      # ユーザー登録したらそのままログイン状態にする
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def users_params
     params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
