class FriendshipsController < ApplicationController
  #before_action :user_page

  def index
    @user = User.find(params[:id])
    @friendships = @user.friendships
  end

  def create
    @friendship = current_user.friendship.build(friend_id: params[:friend_id])
    #add redirect
  end

  def destroy
    @friend = User.find(params[:id])
    @friendship = current_user.friendships.find_by_friend_id(params[:id])
    @friendship_two = @friend.friendships.find_by_friend_id(current_user.id)
    @friendship&.destroy
    @friendship_two&.destroy
  end

  private

end
