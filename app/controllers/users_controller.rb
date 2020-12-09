class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @post = current_user.posts.build
    @friends = current_user.friends.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :high_school, :post_secondary, :city, :region, :country, :birthday, :workplace)
  end

end
