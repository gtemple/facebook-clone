class FriendshipsController < ApplicationController
  def create
    friend_request = FriendRequest.find_by(id: params[:friend_request])
    friend_request.accept
  end

  def destroy
    friendship = Friendship.where('user_id = ? AND friend_id?', current_user.id, params[:id])[0]
  end
end
