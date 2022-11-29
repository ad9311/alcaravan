class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, only: %i[new create]

  def create
    super
  end
end
