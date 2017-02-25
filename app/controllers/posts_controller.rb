class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.create(post_params)
    redirect_to '/posts'
  end

  def show
    @posts = Post.find(params[:id])
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    flash[:notice] = 'Post deleted successfully'
    redirect_to '/posts'
  end

  private

  def post_params
    params.require(:post).permit(:description, :image)
  end

end
