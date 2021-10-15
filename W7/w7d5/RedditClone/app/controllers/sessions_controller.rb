class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(username: params[:user][:username], password: params[:user][:password])

    if user
      login(user)
      redirect_to user_url(user)
    else
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    end
  end

  def destroy
    if logged_in?
      logout
      redirect_to new_session_url
    else
      redirect_to new_session_url
    end
  end

end
