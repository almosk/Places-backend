class V1::PostsController < ApplicationController
  before_action :set_current_user

  def set_current_user
    @current_user = User.first
  end

  def profile_posts
    # @posts = @current_user.posts
    @posts = []
    @current_user.collections.each do |collection|
      collection.posts.each do |post|
        @posts.push(post)
      end
    end
    @collections = @current_user.collections
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

  def save_collections
    @post = Post.find(params[:id])
    @collections = @current_user.collections.select { |c| !@post.collections.include?(c)}
    render :json => @collections.collect { |c| c.collection_snippet_json}
  end
end
