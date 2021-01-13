class SessionsController < ApplicationController
  def new
    if !!session[:name] 
      redirect_to '/'
    end
  end

  def create 
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy 
    session.delete :name 
  end

end
