class PostsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
    redirect_to user_path(@user)
  end

  def create
    @post = Post.new(post_params)
    @post.user = User.find(params[:user_id])
    @post.save
    redirect_to user_path(@post.user)
  end

  private

  def post_params
    params.require(:post).permit(:content, :rating)
  end

end
