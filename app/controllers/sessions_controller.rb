class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'

  end

  def destroy
    session.delete :name
    redirect_to '/'
    # redirect_to controller: 'application', action: 'goodbye'
  end

  

#   A home page or root route.
#    * If the user is not logged in, the page should show them a login link.
#    * If the user is logged in, the page should say, "hi, #{name}", and provide a
#    logout link.
# 2. A login page
#    * Users can enter their name in a form and click 'login'. Thereafter, the app will
#    refer to them by that name.
#    * If the user does not enter a name, they are not logged in. Return them to the
#    login page.
end
