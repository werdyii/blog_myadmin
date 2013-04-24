class Admin::CategoriesController < ApplicationController
  layout "admin"  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find params[:id]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new params[:category]

    if @category.save
      redirect_to admin_categories_path
    else
      render "new" 
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update_attributes params[:category]
      redirect_to admin_categories_path
    else
      render "edit"
    end    
  end

  def destroy
    @post = Category.find(params[:id])
    @post.destroy
    redirect_to admin_categories_path    
  end
end
