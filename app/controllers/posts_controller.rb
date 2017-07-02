class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_url
  end

end

def post_params
  params.require(:post).permit(:caption, :picture)
end
