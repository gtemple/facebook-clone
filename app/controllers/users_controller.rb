class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @friends = current_user.friends.all
  end

end
