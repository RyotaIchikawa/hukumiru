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
  
  def create
    # @user = User.new(
      username: params[:username],
      email:    params[:email],
      password: params[:password],
      image:    "default_image_4ef_jpg"
      )
    if @user.save
      flash[:info] = "!!!!!"
      redirect_to root_url
    else
      render 'new'      
    end
  end
  
  def edit
    # @user = User.find_by(id: params[:id])
    @user.name =     params[:name]
    @user.email =    params[:email]
    @user.password = params[:password]
    # if params[:image]
      @user.image = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image}", image.read)
    end
    
    if @user.save
      redirect_to root_url
    else
      render edit_user_registration_path
    end
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

  # 未使用　あとで
    def sign_up_params
      params.require(:user).permit(
        :username, :email, :password, :image, :password_confirmation
        )
    end
end