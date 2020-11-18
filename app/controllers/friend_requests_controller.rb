class FriendRequestsController < ApplicationController
  def create
    @request = current_user.sent_friend_requests.build(requestee_id: params[:user_id])
    flash.notice = 'Friend request sent'
  end

  def destroy
    friend_request = FriendRequest.find_by(id: params[:id])
    friend_request.decline
  end

end
