class MicropostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "とうこう　したよ　！"
      redirect_to pages_show_path
    else
      render 'root_path'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

end
