class Admin::PostsController < ApplicationController
  layout "admin"

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find params[:id] 
  end

  def create
    @post = Post.new params[:post]

		if @post.save
			redirect_to admin_posts_path
		else
		render "new" 
		end
  end

  def update
    @post = Post.find params[:id]
		if @post.update_attributes params[:post]
			redirect_to admin_posts_path
		else
			render "edit"
		end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path
  end

end
