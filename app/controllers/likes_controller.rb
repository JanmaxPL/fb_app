class LikesController < ApplicationController
   before_action :find_post
   
  def create
    @micropost.likes.create(user_id: current_user.id)
    redirect_to root_url
  end
  
  private
  
  def find_post
    @microposts= Post.find(params[:post_id])
  end
end