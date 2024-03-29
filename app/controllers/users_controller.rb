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
    render "show_follow"
  end
  
  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page])
    render "show_follow"
  end

end