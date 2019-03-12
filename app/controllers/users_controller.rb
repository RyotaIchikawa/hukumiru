class UsersController < ApplicationController
  before_action :admin_user, only: [:index, :destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "ゆーざーを　けしちゃったよ　！"   # なぜか表示されない
    redirect_to users_url
  end
  
  private
  
  # 管理者か確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end