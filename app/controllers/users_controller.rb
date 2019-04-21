class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :following, :followers]

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.page(params[:page])
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.page(params[:page])
<<<<<<< HEAD
    render "show_follow"
=======
    render "show_follow"
>>>>>>> develop
  end
  
  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page])
<<<<<<< HEAD
    render 'show_follow'
=======
    render "show_follow"
>>>>>>> develop
  end

end