# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :admin_user,         only: :destroy

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy #入れない？ user_controllerの方に行く
    super
  end

  private

    # 後で入れる
    def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    
    # 管理者か確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
    
end
