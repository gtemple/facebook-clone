class LikesController < ApplicationController
  before_action :find_liked_post

  def create
    @like = @likeable.likes.build(user_id: current_user.id)
    if @likeable.likeable_type == 'Comment'
    end
  end

  def destroy
  end

  private

  def find_liked_post
    @likeable = Comment.find(params[:comment_id]) if params[:comment_id]
    @likeable = Post.find(params[:post_id]) if params[:post_id]
  end
end
