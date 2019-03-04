class PagesController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(id:params[:id])
  end
end
