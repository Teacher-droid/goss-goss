class WelcomeController < ApplicationController
  def show
    @id = params[:id] #Reception du param sous forme d'ID
  end
end