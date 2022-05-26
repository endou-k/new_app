class CategorysController < ApplicationController
  def new
    @category = Category.new
  end

  def show
  end
  
  def create
    p"================="
    p Category.find_by(id: params[:id])
    p"================="
  end
  
end
