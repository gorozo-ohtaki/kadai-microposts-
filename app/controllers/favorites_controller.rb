class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    post = Micropost.find(params[:micropost_id])
    current_user.followpost(post)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to post
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unfollowpost(post)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to post
  end
  
end
