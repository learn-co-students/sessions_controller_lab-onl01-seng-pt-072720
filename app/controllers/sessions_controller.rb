class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty? # `.nil?` has to come first; otherwise it throws an error, because `.empty?` is not a method you can call on `nil` class. however, you can call `.nil?` on non-nil classes.
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
