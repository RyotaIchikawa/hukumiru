class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    flash[:notice] = "ろぐいんしないと　みれないよ　！" unless user_signed_in?
  end

  def show
    @user = User.find(params[:id])
  end

end