class CommonnamesController < ApplicationController
  before_action :set_commonname, only: [:show, :edit, :update, :destroy]
  
  def show
  end
  
  def new
    @commonname =Commonname.new
  end
  
  def create
    @commonname = Commonname.new(commonname_params)
    
    if @commonname.save
      flash[:success] = '保存成功！'
      redirect_to root_url
    else
      flash.now[:danger] = '保存失敗！'
      render :new
    end
  end
  
  def commonname_params
    params.require(:commonname).permit(:commonname)
  end
  
  def edit
  end
  
  def update

    if @commonname.update(commonname_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @commonname
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @commonname.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to middles_path
  end
  
  def set_commonname
    @commonname = Commonname.find(params[:id])
  end
  
end
