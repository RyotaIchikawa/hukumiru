class MicropostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  before_action :correct_user,       only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:notice] = "とうこう　したよ！"
      redirect_to root_path
    else
      @feed_items = []
      flash[:alert] = "しゃしんが　ないよ！"
      render "pages/index"
    end
  end

  def destroy
    @micropost.destroy
    flash[:notice] = "１まいへったよ！"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:picture, :item_name, :brand_name)
    end
    
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end

end
