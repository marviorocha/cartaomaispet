class StoreStepsController < ApplicationController
  include Wicked::Wizard
  steps :step_1, :step_2

  def show
    @user = current_user
    render_wizard
  end
end
