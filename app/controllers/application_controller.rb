class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #helperの導入
  include SessionsHelper

  #privateメソッド
  private

  #ログインの確認
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
