class UsersController < ApplicationController
  before_action :admin_user, only: [:destroy]

  def index
    #@users = User.all
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  private
  
  # 管理者か確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end