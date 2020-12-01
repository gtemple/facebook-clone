class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(params[:user])
    render_wizard @user
  end

end
