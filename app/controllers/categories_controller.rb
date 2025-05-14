class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @category = Category.find(params[:id])
  end
private
  #permissions
  def category_params
    params.require(:category).permit(:name, :photo)
  end
end
