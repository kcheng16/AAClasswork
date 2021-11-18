class Api::SessionsController < ApplicationController
  def destroy
    if logged_in?
      logout     
      render json: {}
    else
      render json: ['cant logout'], status: 422
    end
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if @user
      login(@user)
      render 'api/users/show'
    else
      render json: ['Invalid username or password'], status: 422
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
