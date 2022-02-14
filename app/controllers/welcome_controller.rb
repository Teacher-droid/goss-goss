class WelcomeController < ApplicationController
  
  
  def welcome
    @gossips = Gossip.all
  end 

end