class LikesController < ApplicationController
  before_action :find_liked_post

  def create
    @user = current_user.id
    @liked_post.likes.create(user_id: current_user.id)
  end

  def destroy
  end

  private

  def find_liked_post
    @liked_post = Post.find(params[:post_id]) || Comment.find(params[:commend_id])
  end
end
