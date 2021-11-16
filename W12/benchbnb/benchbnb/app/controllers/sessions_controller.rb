class SessionsController < ApplicationController
  def destroy
    
    if logged_in?
      logout     
      render: {}
    else
      render: @user.errors.full_messages, status: 422
    end
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if @user
      login(@user)
      redirect_to users_url
    else
      flash[:errors] = ['Invalid username or password']
      render :new
    end
  end

  # def destroy
  #   if logged_in?
  #     logout
  #     #redirect_to 
  #   else  
  #     redirect_to new_session_url
  #   end
  # end
end
