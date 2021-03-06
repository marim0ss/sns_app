class SessionsController < ApplicationController
  # ログイン認証destroy以外はスルーさせる
 skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to(root_path, notice: 'ログインしました')
    else
      flash.now[:alert] = '無効なログインです'
      render :new
    end
  end

  def destroy
    logout
    redirect_to(welcome_path, notice: 'ログアウトしました')
  end

end
