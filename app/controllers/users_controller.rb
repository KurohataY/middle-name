class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @middles = current_user.middles
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private

  #ストロングパラメーター
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
