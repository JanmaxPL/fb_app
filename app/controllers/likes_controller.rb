class LikesController < ApplicationController
   before_action :find_micropost
   
  def create
    @micropost.likes.create(user: current_user)
    redirect_to root_url
  end
  
  private
  
  def find_micropost
    @micropost = Micropost.find(params[:micropost_id])
  end
end