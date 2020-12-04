class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @post = current_user.posts.build
    @friends = current_user.friends.all
  end

end
