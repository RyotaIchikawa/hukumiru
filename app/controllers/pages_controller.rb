class PagesController < ApplicationController
  
  def index
    @micropost = current_user.microposts.build if current_user?(user)
  end
  
end
