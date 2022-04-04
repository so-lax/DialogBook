class HomeController < ApplicationController
  # ユーザ認証されているかチェック
  before_action :authenticate_user!, only: :index
  def index
    redirect_to user_path(current_user.id)
  end
end
