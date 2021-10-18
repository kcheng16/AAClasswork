class PostsController < ApplicationController
  
  def show
    @post = Post.find_by(id: params[:id])

    if @post
      render :show
    else
      flash[:errors] = ['Could not find post']
      redirect_to subs_url
    end
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_url(@post.id)
    else
      flash.now[:errors] = ['Could not create post']
      render :new
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
    render :edit
  end

  def update
    @post = Post.find_by(id: params[:id])

    if @post.creator_id == current_user.id && post.update(post_params)
      redirect_to post_url(@post.id)
    else
      flash.now[:errors] = ['Could not update post']
      redirect_to post_url(@post.id)
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])

    if logged_in? && @post.creator_id == current_user.id
      @post.destroy
      redirect_to subs_url
    else
      flash.now[:errors] = ['Could not delete post']
      redirect_to post_url(@post.id)
    end
  end

  def post_params
    params.require(:post).permit(:title, :url, :content, :sub_ids)
  end
end
