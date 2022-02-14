class LikeController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
   @like = current_users.likes.new(like_params)
   @like.save
   redirect_to root_path
   
  end
 
  def destroy
   @like = current_users.likes.find(params[:id])
   post = @like.post
   @like.destroy
   redirect_to root_path
  
  end
  private
  def like_params
    params.require(:like).permit(:gossip_id)
  end
end
