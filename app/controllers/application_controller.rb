class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # sorceryが提供するメソッド。認証されているかどうかを判定する
  before_action :require_login


  protected
  # 認証されてないときに実行されるメソッド
  def not_authenticated
    redirect_to welcome_path
  end
end
