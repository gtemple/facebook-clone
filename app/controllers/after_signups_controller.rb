class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :personal_information

  def show
    @user = current_user

    render_wizard
  end

  def update
    @user = current_user
    @user = update_attributes

    render_wizard(@user)

  end
end
