class CommentsController < ApplicationController
  def create
    @post = Post.find_by(id: params[:post_id])
    @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
end

def comment_params
  params.require(:comment).permit(:body)
end
