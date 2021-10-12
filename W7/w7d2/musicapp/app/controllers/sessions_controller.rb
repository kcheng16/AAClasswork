class SessionsController < ApplicationController
  def new #the login page-- sign-in (shows session view)
    render :new
  end

  def create #create a session||after clicking login button (Session_url)
    @user = User.find_by_credential(params[:user][:username], params[:user][:password])

    if @user
      login(@user)
      redirect_to user_url(@user)
    else
      flash.now[:error] = ["Invalid username or password"]
      render :new
    end
  end

  def destroy #end session token
    logout
    redirect_to new_session_url
  end
end
