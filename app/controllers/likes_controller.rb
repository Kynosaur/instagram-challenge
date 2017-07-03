class LikesController < ApplicationController
  def create
    post = Post.find_by(id: params[:post_id])
    like = post.likes.build
    like.user = current_user
    like.save
    redirect_to posts_path
  end
end
