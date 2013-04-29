class Admin::PostsController < ApplicationController
  layout "admin"
  helper_method :sort_column, :sort_direction

  def index
    # @posts = Post.all.page params[:page]
    @posts = Post.page params[:page]
    @posts = @posts.order(sort_column + ' ' + sort_direction)
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

  private
  def sort_column
    # params[:sort] || "name"
    Post.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    # params[:direction] || "asc"
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end

end
