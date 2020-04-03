class V1::PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user_title = User.all.find(@post.user_id).title
    @collections = @post.collections
  end
end
