class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!, only: [:destroy]

  def new
    super
  end

  def create
    super
  end

  def destroy
    super
  end
    
end
