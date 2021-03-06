class MiddlesController < ApplicationController
  #ログインの確認
  before_action :require_user_logged_in
  #共通メソッドを実行
  before_action :set_middle, only: [:edit, :update, :destroy]

  def index
    @middle = current_user.middles.last
    @middles = current_user.middles
  end

  def show
    @middle = current_user.middles.last
    @middles = current_user.middles
  end

  def new
    @middle = Middle.new
    #ランダムに値を習得
    @commonname = Commonname.where( 'id >= ?', rand(Commonname.first.id..Commonname.last.id) ).first
    @mr = Mr.where( 'id >= ?', rand(Mr.first.id..Mr.last.id) ).first
    @surname = Surname.where( 'id >= ?', rand(Surname.first.id..Surname.last.id) ).first
  end

  def create
    @middle = current_user.middles.build(middle_params)

    if @middle.save
      flash[:success] = '作成成功！'
      redirect_to middles_path
    else
      flash.now[:danger] = '作成失敗！'
      render :new
    end
  end

  def destroy
    @middle.destroy
    flash[:success] = 'ミドルネームは正常に削除されました'
    redirect_to root_url
  end

  def set_middle
    @middle = current_user.middles.find_by(id: params[:id])
    unless @middle
      redirect_to root_url
    end
  end

  def middle_params
    params.require(:middle).permit(:Lname,:Fname,:mr,:surname,:commonname,:commonname_id,:surname_id,:mr_id)
  end

end
