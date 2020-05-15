class V1::PostsController < ApplicationController
  before_action :set_current_user

  def set_current_user
    @current_user = User.first
  end

  def profile_posts
    # @posts = @current_user.posts
    @profile_posts = []
    @current_user.collections.each do |collection|
      collection.posts.each do |post|
        @profile_posts.push(post)
      end
    end
    @collections = @current_user.collections
    render :json => @profile_posts.collect { |p| p.post_snippet_json}
  end

  def explore_posts
    @profile_posts = []
    @current_user.collections.each do |collection|
      collection.posts.each do |post|
        @profile_posts.push(post)
      end
    end
    @explore_posts = Post.all.select { |p| !@profile_posts.include?(p) }
    render :json => @explore_posts.collect { |p| p.post_snippet_json}
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
