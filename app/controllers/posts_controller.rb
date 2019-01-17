class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(
      content: posts_params[:content],
      user_id: session[:user_id]
    )
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def posts_params
      params.require(:post).permit(:content)
    end
end
