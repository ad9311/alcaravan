class DashboardController < ApplicationController
  def index
    sign_out_and_redirect(current_user)
  end
end
