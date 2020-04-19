class V1::PostsController < ApplicationController
  before_action :set_current_user

  def set_current_user
    @current_user = User.first
  end

  def profile_posts
    # @posts = Post.all
    @posts = @current_user.posts
    render :json => @posts.collect { |p| p.post_snippet_json}
  end

  def explore_posts
    @posts = Post.all.select { |p| p.user_id != @current_user.id }
    render :json => @posts.collect { |p| p.post_snippet_json}
  end

  def show
    @post = Post.find(params[:id])
    render :json => @post.post_show_json
  end
end
