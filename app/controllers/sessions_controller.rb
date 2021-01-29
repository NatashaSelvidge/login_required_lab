class SessionsController < ApplicationController
  before_action :validate_login
  def new
  end

  def create
    if params[:name] && params[:name] != " "
      session[:name] = params[:name] 
      flash[:success] = "Login Successful"
      redirect_to root_path
    else
      flash[:error] = "Please enter a valid username"
      redirect_to login_path
    end
  end 

  def destroy 
    session.delete :name 
  end 

  def current_user 
    session[:username] = session.id 
  end 
end
