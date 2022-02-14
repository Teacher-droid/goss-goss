class SessionsController < ApplicationController
  def new
    user = User.new
  end
  
  def create
    user = User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # log_in(user)
      flash[:notice] = "You login successfully!"
      redirect_to root_path
    else 
      flash.now[:alert] = 'Invalid email/password combinaison'
    render 'new'
    end
  end
  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
