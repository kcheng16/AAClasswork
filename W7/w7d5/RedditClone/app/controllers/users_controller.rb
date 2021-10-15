class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.new(strong_params)

    if @user.save
      login(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])

    if logged_in? && @user
      redirect_to user_url(@user)
    else
      redirect_to new_session_url
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])

    if @user && logged_in? && current_user.id == @user.id
      @user.destroy
      redirect_to new_session_url
    else
      flash[:errors] = ["Unable to delete User"]
      redirect_to new_session_url
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    render :edit
  end

  def update
    @user = User.find_by(id: params[:id])
    # if logged_in? && current_user.id == @user.id
    if current_user
      if @user.update(strong_params)
        flash[:errors] = ['Sucessfully Updated']
        redirect_to user_url(@user)
      else
        flash[:errors] = ['Unable to update']
        redirect_to user_url(@user)
      end
    end
  end

  def strong_params
    params.require(:user).permit(:username, :password)
  end
end
