class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social

  def show
    @user = current_user

    case step
    when :social
    end
    render_wizard
  end

  def update
    @user = current_user
    @user.update(user_params)

    render_wizard @user
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :high_school, :post_secondary, :city, :region, :country, :birthday, :workplace)
  end

end
