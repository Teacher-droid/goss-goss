class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(first_name:params[:first_name], last_name:params[:last_name], 
      age:params[:age], description:params[:description], email:params[:email], 
      password:params[:password])
      
    if @user.save
      flash[:notice] = "You have created your account!"
      redirect_to root_path
    end
  end
end

