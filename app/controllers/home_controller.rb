class HomeController < ApplicationController
  def index
    @gossips = Gossip.all
    @user = User.all
  end
  #def team

  #end
  #def contact

  #end
  #def welcome
    #@gossips = Gossip.all
  #end 
  
end
