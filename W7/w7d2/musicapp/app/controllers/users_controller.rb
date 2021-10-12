class UsersController < ApplicationController
  
  def new #sign up
    @user = User.find(params[:id])
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @users.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
