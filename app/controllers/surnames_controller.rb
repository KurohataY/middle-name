class SurnamesController < ApplicationController
  before_action :set_surname, only: [:show, :edit, :update, :destroy]
  
  def show
  end
  
  def new
    @surname =Surname.new
  end
  
  def create
    @surname = Surname.new(surname_params)
    
    if @surname.save
      flash[:success] = '保存成功！'
      redirect_to root_url
    else
      flash.now[:danger] = '保存失敗！'
      render :new
    end
  end
  
  def surname_params
    params.require(:surname).permit(:surname)
  end
  
  def edit
  end
  
  def update

    if @surname.update(surname_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @surname
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @surname.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to middles_path
  end
  
  def set_surname
    @surname = Surname.find(params[:id])
  end
  
end
