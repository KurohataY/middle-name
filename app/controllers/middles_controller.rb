class MiddlesController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_middle, only: [:show, :edit, :update, :destroy]

  
  def index
    @middle = current_user.middles.last
    @middles = current_user.middles
  end
  
  def history
    @middles = current_user.middles
  end

  def show
    @middle = Middle.find(params[:id])
  end

  def new
    @middle = Middle.new
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

  def edit
  end

  def update
    if @middle.update(task_params)
      flash[:success] = '作り直し成功！'
      redirect_to @task
    else
      flash.now[:danger] = '失敗！'
      render :edit
    end
  end

  def destroy
    @middle.destroy

    flash[:success] = 'ミドルネームは正常に削除されました'
    redirect_to root_url
 
  end
  
  def set_middle
    @task = current_user.middles.find_by(id: params[:id])
    unless @task
      redirect_to root_url
    end
  end
  
  def middle_params
    params.require(:middle).permit(:Lname,:Fname,:mr,:surname,:commonname,:commonname_id,:surname_id,:mr_id)
  end
  
end
