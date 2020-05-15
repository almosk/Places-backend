class V1::UsersController < ApplicationController
  before_action :set_current_user

  def set_current_user
    @current_user = User.first
  end

  def index
    @users = User.all.where.not(id: @current_user.id)
    render :json => @users.collect { |u| u.user_snippet_json}
  end

  def show
    @user = User.find(params[:id])
    @collections = @user.collections
    @posts = []
    @collections.each do |collection|
      collection.posts.each do |post|
        @posts.push(post)
      end
    end
    render json: {
      id: @user.id,
      title: @user.title,
      description: @user.description,
      username: @user.username,
      avatar: 'http://localhost:3000' + @user.avatar.to_s,
      collections: @collections.collect { |c| c.collection_snippet_json},
      posts: @posts.collect { |p| p.post_snippet_json}
    }
  end
end
