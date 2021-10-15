class SubsController < ApplicationController

  def index
    @subs = Sub.all
    render :index
  end

  def show
    @sub = Sub.find_by(id: params[:id])

    if @sub
      redirect_to sub_url(@sub)
    else
      flash[:errors] = ["Sub does not exist"]
      render :index
    end
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      flash[:errors] = ["Sub created"]
      redirect_to sub_url(@sub)
    else
      flash[:errors] = ["Unable to create sub"]
      render :new
    end
  end

  def edit
    @sub = Sub.find_by(id: params[:id])
    render :edit
  end

  def update
    @sub = Sub.find_by(id: params[:id])

    if @sub.creator_id == current_user.id && @sub.update(sub_params)
      redirect_to sub_url(@sub)
    else
      flash[:errors] = ["Unable to update"]
      render :edit
    end
  end

  def destroy
    @sub = Sub.find_by(id: params[:id])

    if @sub.creator_id == current_user.id && @sub
      @sub.destroy
      flash[:errors] = ["Sub successfully deleted"]
      redirect_to user_url(@sub.creator_id)
    else
      flash[:errors] = ["Unable to delete sub"]
      redirect_to user_url(@sub.creator_id)
    end
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description)
  end

end
