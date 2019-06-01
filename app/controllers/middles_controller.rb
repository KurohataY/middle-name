class MiddlesController < ApplicationController
  def index
  end

  def show
    @middle = Middle.find(params[:id])
  end

  def new
    @middle = Middle.new
    
    @commonname = Commonname.where( 'id >= ?', rand(Commonname.first.id..Commonname.last.id) ).first.commonname
    @mr = Mr.where( 'id >= ?', rand(Mr.first.id..Mr.last.id) ).first.mr
    @surname = Surname.where( 'id >= ?', rand(Surname.first.id..Surname.last.id) ).first.surname
  end

  def create
    
    
    @middle = Middle.new(middle_params)
    
    if @middle.save
      flash[:success] = '保存成功！'
      redirect_to middles_path
    else
      flash.now[:danger] = '保存失敗！'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def middle_params
    params.require(:middle).permit(:Lname,:Fname,:mr,:surname,:commonname)
  end
  
end
