class MiddlesController < ApplicationController
  def index
    @commonnames = Commonname.all
    @mrs = Mr.all
    @surnames = Surname.all
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
