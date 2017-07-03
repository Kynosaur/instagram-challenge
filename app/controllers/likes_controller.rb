class LikesController < ApplicationController
  def create
    post = Post.find_by(id: params[:post_id])
    if current_user && !post.likes.any? { |like| like.user == current_user }
      like = post.likes.build
      like.user = current_user
      like.save
    end
    redirect_to posts_path
  end
end
