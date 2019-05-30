class MrsController < ApplicationController
  before_action :set_mr, only: [:show, :edit, :update, :destroy]
  
  def show 
  end
  
  def new
    @mr =Mr.new
  end
  
  def create
    @mr = Mr.new(mr_params)
    
    if @mr.save
      flash[:success] = '保存成功！'
      redirect_to root_url
    else
      flash.now[:danger] = '保存失敗！'
      render :new
    end
  end
  
  def mr_params
    params.require(:mr).permit(:mr)
  end
  
  def edit
  end
  
  def update

    if @mr.update(mr_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @mr
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @mr.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to middles_path
  end
  
  def set_mr
    @mr = Mr.find(params[:id])
  end
  
end
