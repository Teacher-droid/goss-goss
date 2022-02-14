class GossipsController < ApplicationController
  before_action :set_gossip, only: %i[ create new ]
  def edit 
    @gossip = Gossip.all.find_by(id:params[:id])
  end
  def show
    # @gossip = Gossip.all.find_by(id:params[:id])
    @gossip = Gossip.find(params[:id])
  end
  def new
    
  end
  
    def create
       
      
      @gossip = Gossip.new(title:params[:title], content:params[:content], user:current_users)
      if @gossip.save
        redirect_to root_path
       
      else 
        redirect_to new_gossip_path
        
      end
      
    end  
      # current_users
    
     def gossip_params
      params.permit(:title, :content, :user_id)
    end
    def set_gossip
      if !current_users
        redirect_to root_path
      end
    end
    def update
      @gossip = Gossip.all.find_by(id:params[:id])
      post=params.require(:gossip).permit(:title, :content)
      if @gossip.update(post)
        redirect_to root_path
      end
    end
    def destroy
      @gossip = Gossip.all.find_by(id:params[:id])
      if @gossip.delete
        redirect_to root_path
      end
    end
end
