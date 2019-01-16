class SessionsController < ApplicationController
  # ログイン認証destroy以外はスルーさせる
 skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create

  end

  def destroy

  end

end
