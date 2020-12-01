class FriendshipsController < ApplicationController
  #before_action :user_page

  def index
    @user = User.find(params[:id])
    @friendships = @user.friendships
  end

  def new

  end

  def create
    @friendship = current_user.friendship.build(@user_friend)
  end

  def destroy

  end

  private
  #def user_page
  #  @user_friends = User.find(params[:id])
  #end

end
